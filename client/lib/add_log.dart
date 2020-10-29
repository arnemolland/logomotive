import 'package:flutter/material.dart';
import 'package:logomotive/generated/api/v1/logomotive.pb.dart';
import 'package:logomotive/generated/google/protobuf/timestamp.pb.dart';
import 'package:logomotive/search.dart';
import 'package:logomotive/service.dart';
import 'package:uuid/uuid.dart';

class AddLogScreen extends StatefulWidget {
  final Function(LogEntry) onEntryAdded;

  const AddLogScreen({Key key, this.onEntryAdded}) : super(key: key);

  @override
  _AddLogScreenState createState() => _AddLogScreenState();
}

class _AddLogScreenState extends State<AddLogScreen> {
  final idController = TextEditingController();
  final messageController = TextEditingController();
  final labelController = TextEditingController();

  final idNode = FocusNode();
  final messageNode = FocusNode();
  final labelNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  String validator(String value) {
    if (value == null || value.isEmpty) {
      return 'Can\'t be empty';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: Form(
          key: formKey,
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              TextFormField(
                controller: idController,
                validator: validator,
                focusNode: idNode,
                onFieldSubmitted: (_) => messageNode.requestFocus(),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'ID',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.sync_rounded),
                    onPressed: () {
                      setState(() {
                        idController.text = Uuid().v4();
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                focusNode: messageNode,
                validator: validator,
                controller: messageController,
                onFieldSubmitted: (_) => labelNode.requestFocus(),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(labelText: 'Message'),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                focusNode: labelNode,
                controller: labelController,
                validator: validator,
                decoration: InputDecoration(
                  labelText: 'Label',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search_rounded),
                    onPressed: () async {
                      final selection = await showSearch(
                        context: context,
                        delegate: LabelSearchDelegate(),
                      );

                      if (selection != null) {
                        setState(() {
                          labelController.text = selection;
                        });
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.send_rounded),
        onPressed: () {
          if (formKey.currentState.validate()) {
            final entry = LogEntry()
              ..id = idController.text
              ..message = messageController.text
              ..label = labelController.text
              ..time = Timestamp.fromDateTime(DateTime.now());

            LogomotiveService.of(context).push(entry).then((_) {
              widget.onEntryAdded?.call(entry);
              Navigator.pop(context);
            });
          }
        },
      ),
    );
  }
}

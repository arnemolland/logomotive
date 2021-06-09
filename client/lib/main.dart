import 'dart:io';

import 'package:flutter/material.dart';
import 'package:logomotive/add_log.dart';
import 'package:logomotive/drawer.dart';
import 'package:logomotive/log_list.dart';
import 'package:logomotive/service.dart';
import 'package:crayola/crayola.dart';

import 'generated/api/v1/logomotive.pb.dart';

void main() {
  runApp(
    LogomotiveService(
      child: LogomotiveApp(),
    ),
  );
}

class LogomotiveApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Logomotive',
      theme: ThemeData.dark().copyWith(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.tealAccent,
          selectionColor: Colors.tealAccent.withOpacity(0.1),
          selectionHandleColor: Colors.tealAccent,
        ),
      ),
      home: Builder(
        builder: (context) {
          if (Platform.isMacOS) {
            Crayola.setTitleBarColor(Theme.of(context).primaryColor);
            Crayola.setTitleVisibility(false);
          }

          return HomeScreen();
        },
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String label;
  Future<List<LogEntry>>? tail;

  @override
  void initState() {
    super.initState();
    label = 'default';
  }

  Future<List<LogEntry>> getFuture(String label) {
    return LogomotiveService.of(context)!.tail(TailRequest()..label = label);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logs from \'$label\''),
      ),
      drawer: LabelDrawer(
        onLabelSelected: (label) {
          setState(() {
            this.label = label;
            tail = getFuture(label);
          });
        },
      ),
      body: FutureBuilder<List<LogEntry>>(
        future: tail ?? getFuture(label),
        initialData: [],
        builder: (context, snapshot) {
          return LogList(
            entries: snapshot.data,
            onRefresh: () async {
              setState(() {
                tail = getFuture(label);
              });

              // Allow for cool refresh effect
              await Future.delayed(Duration(seconds: 2));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_rounded),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => AddLogScreen(
              onEntryAdded: (entry) {
                setState(() {
                  tail = getFuture(label);
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

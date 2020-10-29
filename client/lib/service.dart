import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:logomotive/generated/google/protobuf/empty.pb.dart';

import 'generated/api/v1/logomotive.pbgrpc.dart';

class LogomotiveService extends InheritedWidget {
  final LogomotiveClient _client;

  LogomotiveService({Widget child})
      : this._client = LogomotiveClient(LogomotiveChannel()),
        super(child: child);

  Future<List<LogEntry>> tail(TailQuery request) async {
    return await _client.tail(request).toList();
  }

  Stream<LogEntry> feed(Stream<LogEntry> request) {
    return _client.feed(request);
  }

  Future<LogEntry> push(LogEntry entry) async {
    return await _client.push(entry);
  }

  Future<List<String>> labels() async {
    return await _client.labels(Empty()).then((res) => res.labels);
  }

  @override
  bool updateShouldNotify(LogomotiveService old) => false;

  static LogomotiveService of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LogomotiveService>();
  }
}

class LogomotiveChannel extends ClientChannel {
  LogomotiveChannel() : super('run.molland.sh');
}

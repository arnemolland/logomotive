import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

import 'generated/api/v1/logomotive.pbgrpc.dart';

class LogomotiveService extends InheritedWidget {
  final LogomotiveServiceClient _client;

  LogomotiveService({required Widget child})
      : this._client = LogomotiveServiceClient(LogomotiveChannel()),
        super(child: child);

  Future<List<LogEntry>> tail(TailRequest request) async {
    return await _client.tail(request).map((r) => r.entry).toList();
  }

  Stream<LogEntry> feed(Stream<FeedRequest> request) {
    return _client.feed(request).map((r) => r.entry).asBroadcastStream();
  }

  Future<LogEntry> push(PushRequest request) async {
    return await _client.push(request).then((r) => r.entry);
  }

  Future<List<String>> labels() async {
    return await _client.labels(LabelsRequest()).then((res) => res.labels);
  }

  @override
  bool updateShouldNotify(LogomotiveService old) => false;

  static LogomotiveService? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LogomotiveService>();
  }
}

class LogomotiveChannel extends ClientChannel {
  LogomotiveChannel() : super('run.molland.sh');
}

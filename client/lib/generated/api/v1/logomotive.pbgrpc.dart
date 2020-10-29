///
//  Generated code. Do not modify.
//  source: api/v1/logomotive.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'logomotive.pb.dart' as $0;
import '../../google/protobuf/empty.pb.dart' as $1;
export 'logomotive.pb.dart';

class LogomotiveClient extends $grpc.Client {
  static final _$push = $grpc.ClientMethod<$0.LogEntry, $0.LogEntry>(
      '/logomotive.Logomotive/Push',
      ($0.LogEntry value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LogEntry.fromBuffer(value));
  static final _$feed = $grpc.ClientMethod<$0.LogEntry, $0.LogEntry>(
      '/logomotive.Logomotive/Feed',
      ($0.LogEntry value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LogEntry.fromBuffer(value));
  static final _$tail = $grpc.ClientMethod<$0.TailQuery, $0.LogEntry>(
      '/logomotive.Logomotive/Tail',
      ($0.TailQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LogEntry.fromBuffer(value));
  static final _$labels = $grpc.ClientMethod<$1.Empty, $0.LabelList>(
      '/logomotive.Logomotive/Labels',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LabelList.fromBuffer(value));

  LogomotiveClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.LogEntry> push($0.LogEntry request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$push, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.LogEntry> feed($async.Stream<$0.LogEntry> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$feed, request, options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseStream<$0.LogEntry> tail($0.TailQuery request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$tail, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.LabelList> labels($1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$labels, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class LogomotiveServiceBase extends $grpc.Service {
  $core.String get $name => 'logomotive.Logomotive';

  LogomotiveServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LogEntry, $0.LogEntry>(
        'Push',
        push_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LogEntry.fromBuffer(value),
        ($0.LogEntry value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LogEntry, $0.LogEntry>(
        'Feed',
        feed,
        true,
        true,
        ($core.List<$core.int> value) => $0.LogEntry.fromBuffer(value),
        ($0.LogEntry value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TailQuery, $0.LogEntry>(
        'Tail',
        tail_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.TailQuery.fromBuffer(value),
        ($0.LogEntry value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.LabelList>(
        'Labels',
        labels_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.LabelList value) => value.writeToBuffer()));
  }

  $async.Future<$0.LogEntry> push_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LogEntry> request) async {
    return push(call, await request);
  }

  $async.Stream<$0.LogEntry> tail_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TailQuery> request) async* {
    yield* tail(call, await request);
  }

  $async.Future<$0.LabelList> labels_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return labels(call, await request);
  }

  $async.Future<$0.LogEntry> push($grpc.ServiceCall call, $0.LogEntry request);
  $async.Stream<$0.LogEntry> feed(
      $grpc.ServiceCall call, $async.Stream<$0.LogEntry> request);
  $async.Stream<$0.LogEntry> tail($grpc.ServiceCall call, $0.TailQuery request);
  $async.Future<$0.LabelList> labels($grpc.ServiceCall call, $1.Empty request);
}

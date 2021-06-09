///
//  Generated code. Do not modify.
//  source: api/v1/logomotive.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'logomotive.pb.dart' as $0;
export 'logomotive.pb.dart';

class LogomotiveServiceClient extends $grpc.Client {
  static final _$push = $grpc.ClientMethod<$0.PushRequest, $0.PushResponse>(
      '/api.v1.LogomotiveService/Push',
      ($0.PushRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PushResponse.fromBuffer(value));
  static final _$feed = $grpc.ClientMethod<$0.FeedRequest, $0.FeedResponse>(
      '/api.v1.LogomotiveService/Feed',
      ($0.FeedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FeedResponse.fromBuffer(value));
  static final _$tail = $grpc.ClientMethod<$0.TailRequest, $0.TailResponse>(
      '/api.v1.LogomotiveService/Tail',
      ($0.TailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TailResponse.fromBuffer(value));
  static final _$labels =
      $grpc.ClientMethod<$0.LabelsRequest, $0.LabelsResponse>(
          '/api.v1.LogomotiveService/Labels',
          ($0.LabelsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.LabelsResponse.fromBuffer(value));

  LogomotiveServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PushResponse> push($0.PushRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$push, request, options: options);
  }

  $grpc.ResponseStream<$0.FeedResponse> feed(
      $async.Stream<$0.FeedRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$feed, request, options: options);
  }

  $grpc.ResponseStream<$0.TailResponse> tail($0.TailRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$tail, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.LabelsResponse> labels($0.LabelsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$labels, request, options: options);
  }
}

abstract class LogomotiveServiceBase extends $grpc.Service {
  $core.String get $name => 'api.v1.LogomotiveService';

  LogomotiveServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PushRequest, $0.PushResponse>(
        'Push',
        push_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PushRequest.fromBuffer(value),
        ($0.PushResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FeedRequest, $0.FeedResponse>(
        'Feed',
        feed,
        true,
        true,
        ($core.List<$core.int> value) => $0.FeedRequest.fromBuffer(value),
        ($0.FeedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TailRequest, $0.TailResponse>(
        'Tail',
        tail_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.TailRequest.fromBuffer(value),
        ($0.TailResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LabelsRequest, $0.LabelsResponse>(
        'Labels',
        labels_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LabelsRequest.fromBuffer(value),
        ($0.LabelsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PushResponse> push_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PushRequest> request) async {
    return push(call, await request);
  }

  $async.Stream<$0.TailResponse> tail_Pre(
      $grpc.ServiceCall call, $async.Future<$0.TailRequest> request) async* {
    yield* tail(call, await request);
  }

  $async.Future<$0.LabelsResponse> labels_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LabelsRequest> request) async {
    return labels(call, await request);
  }

  $async.Future<$0.PushResponse> push(
      $grpc.ServiceCall call, $0.PushRequest request);
  $async.Stream<$0.FeedResponse> feed(
      $grpc.ServiceCall call, $async.Stream<$0.FeedRequest> request);
  $async.Stream<$0.TailResponse> tail(
      $grpc.ServiceCall call, $0.TailRequest request);
  $async.Future<$0.LabelsResponse> labels(
      $grpc.ServiceCall call, $0.LabelsRequest request);
}

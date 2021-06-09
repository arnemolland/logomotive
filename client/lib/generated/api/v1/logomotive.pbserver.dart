///
//  Generated code. Do not modify.
//  source: api/v1/logomotive.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'logomotive.pb.dart' as $1;
import 'logomotive.pbjson.dart';

export 'logomotive.pb.dart';

abstract class LogomotiveServiceBase extends $pb.GeneratedService {
  $async.Future<$1.PushResponse> push($pb.ServerContext ctx, $1.PushRequest request);
  $async.Future<$1.FeedResponse> feed($pb.ServerContext ctx, $1.FeedRequest request);
  $async.Future<$1.TailResponse> tail($pb.ServerContext ctx, $1.TailRequest request);
  $async.Future<$1.LabelsResponse> labels($pb.ServerContext ctx, $1.LabelsRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Push': return $1.PushRequest();
      case 'Feed': return $1.FeedRequest();
      case 'Tail': return $1.TailRequest();
      case 'Labels': return $1.LabelsRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Push': return this.push(ctx, request as $1.PushRequest);
      case 'Feed': return this.feed(ctx, request as $1.FeedRequest);
      case 'Tail': return this.tail(ctx, request as $1.TailRequest);
      case 'Labels': return this.labels(ctx, request as $1.LabelsRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => LogomotiveServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => LogomotiveServiceBase$messageJson;
}


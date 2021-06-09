///
//  Generated code. Do not modify.
//  source: api/v1/logomotive.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $0;

class LogEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogEntry', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..aOM<$0.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  LogEntry._() : super();
  factory LogEntry({
    $core.String? id,
    $core.String? message,
    $core.String? label,
    $0.Timestamp? time,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (message != null) {
      _result.message = message;
    }
    if (label != null) {
      _result.label = label;
    }
    if (time != null) {
      _result.time = time;
    }
    return _result;
  }
  factory LogEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogEntry clone() => LogEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogEntry copyWith(void Function(LogEntry) updates) => super.copyWith((message) => updates(message as LogEntry)) as LogEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogEntry create() => LogEntry._();
  LogEntry createEmptyInstance() => create();
  static $pb.PbList<LogEntry> createRepeated() => $pb.PbList<LogEntry>();
  @$core.pragma('dart2js:noInline')
  static LogEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogEntry>(create);
  static LogEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get label => $_getSZ(2);
  @$pb.TagNumber(3)
  set label($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLabel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabel() => clearField(3);

  @$pb.TagNumber(4)
  $0.Timestamp get time => $_getN(3);
  @$pb.TagNumber(4)
  set time($0.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureTime() => $_ensure(3);
}

class PushRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PushRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LogEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entry', subBuilder: LogEntry.create)
    ..hasRequiredFields = false
  ;

  PushRequest._() : super();
  factory PushRequest({
    LogEntry? entry,
  }) {
    final _result = create();
    if (entry != null) {
      _result.entry = entry;
    }
    return _result;
  }
  factory PushRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PushRequest clone() => PushRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PushRequest copyWith(void Function(PushRequest) updates) => super.copyWith((message) => updates(message as PushRequest)) as PushRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushRequest create() => PushRequest._();
  PushRequest createEmptyInstance() => create();
  static $pb.PbList<PushRequest> createRepeated() => $pb.PbList<PushRequest>();
  @$core.pragma('dart2js:noInline')
  static PushRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushRequest>(create);
  static PushRequest? _defaultInstance;

  @$pb.TagNumber(1)
  LogEntry get entry => $_getN(0);
  @$pb.TagNumber(1)
  set entry(LogEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntry() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntry() => clearField(1);
  @$pb.TagNumber(1)
  LogEntry ensureEntry() => $_ensure(0);
}

class PushResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PushResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LogEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entry', subBuilder: LogEntry.create)
    ..hasRequiredFields = false
  ;

  PushResponse._() : super();
  factory PushResponse({
    LogEntry? entry,
  }) {
    final _result = create();
    if (entry != null) {
      _result.entry = entry;
    }
    return _result;
  }
  factory PushResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PushResponse clone() => PushResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PushResponse copyWith(void Function(PushResponse) updates) => super.copyWith((message) => updates(message as PushResponse)) as PushResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushResponse create() => PushResponse._();
  PushResponse createEmptyInstance() => create();
  static $pb.PbList<PushResponse> createRepeated() => $pb.PbList<PushResponse>();
  @$core.pragma('dart2js:noInline')
  static PushResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushResponse>(create);
  static PushResponse? _defaultInstance;

  @$pb.TagNumber(1)
  LogEntry get entry => $_getN(0);
  @$pb.TagNumber(1)
  set entry(LogEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntry() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntry() => clearField(1);
  @$pb.TagNumber(1)
  LogEntry ensureEntry() => $_ensure(0);
}

class FeedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LogEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entry', subBuilder: LogEntry.create)
    ..hasRequiredFields = false
  ;

  FeedRequest._() : super();
  factory FeedRequest({
    LogEntry? entry,
  }) {
    final _result = create();
    if (entry != null) {
      _result.entry = entry;
    }
    return _result;
  }
  factory FeedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedRequest clone() => FeedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedRequest copyWith(void Function(FeedRequest) updates) => super.copyWith((message) => updates(message as FeedRequest)) as FeedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeedRequest create() => FeedRequest._();
  FeedRequest createEmptyInstance() => create();
  static $pb.PbList<FeedRequest> createRepeated() => $pb.PbList<FeedRequest>();
  @$core.pragma('dart2js:noInline')
  static FeedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedRequest>(create);
  static FeedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  LogEntry get entry => $_getN(0);
  @$pb.TagNumber(1)
  set entry(LogEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntry() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntry() => clearField(1);
  @$pb.TagNumber(1)
  LogEntry ensureEntry() => $_ensure(0);
}

class FeedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LogEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entry', subBuilder: LogEntry.create)
    ..hasRequiredFields = false
  ;

  FeedResponse._() : super();
  factory FeedResponse({
    LogEntry? entry,
  }) {
    final _result = create();
    if (entry != null) {
      _result.entry = entry;
    }
    return _result;
  }
  factory FeedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedResponse clone() => FeedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedResponse copyWith(void Function(FeedResponse) updates) => super.copyWith((message) => updates(message as FeedResponse)) as FeedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeedResponse create() => FeedResponse._();
  FeedResponse createEmptyInstance() => create();
  static $pb.PbList<FeedResponse> createRepeated() => $pb.PbList<FeedResponse>();
  @$core.pragma('dart2js:noInline')
  static FeedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedResponse>(create);
  static FeedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  LogEntry get entry => $_getN(0);
  @$pb.TagNumber(1)
  set entry(LogEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntry() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntry() => clearField(1);
  @$pb.TagNumber(1)
  LogEntry ensureEntry() => $_ensure(0);
}

class LabelsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LabelsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LabelsRequest._() : super();
  factory LabelsRequest() => create();
  factory LabelsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabelsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabelsRequest clone() => LabelsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabelsRequest copyWith(void Function(LabelsRequest) updates) => super.copyWith((message) => updates(message as LabelsRequest)) as LabelsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LabelsRequest create() => LabelsRequest._();
  LabelsRequest createEmptyInstance() => create();
  static $pb.PbList<LabelsRequest> createRepeated() => $pb.PbList<LabelsRequest>();
  @$core.pragma('dart2js:noInline')
  static LabelsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelsRequest>(create);
  static LabelsRequest? _defaultInstance;
}

class LabelsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LabelsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'labels')
    ..hasRequiredFields = false
  ;

  LabelsResponse._() : super();
  factory LabelsResponse({
    $core.Iterable<$core.String>? labels,
  }) {
    final _result = create();
    if (labels != null) {
      _result.labels.addAll(labels);
    }
    return _result;
  }
  factory LabelsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabelsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabelsResponse clone() => LabelsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabelsResponse copyWith(void Function(LabelsResponse) updates) => super.copyWith((message) => updates(message as LabelsResponse)) as LabelsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LabelsResponse create() => LabelsResponse._();
  LabelsResponse createEmptyInstance() => create();
  static $pb.PbList<LabelsResponse> createRepeated() => $pb.PbList<LabelsResponse>();
  @$core.pragma('dart2js:noInline')
  static LabelsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelsResponse>(create);
  static LabelsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get labels => $_getList(0);
}

class TailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TailRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..hasRequiredFields = false
  ;

  TailRequest._() : super();
  factory TailRequest({
    $core.String? label,
  }) {
    final _result = create();
    if (label != null) {
      _result.label = label;
    }
    return _result;
  }
  factory TailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TailRequest clone() => TailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TailRequest copyWith(void Function(TailRequest) updates) => super.copyWith((message) => updates(message as TailRequest)) as TailRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TailRequest create() => TailRequest._();
  TailRequest createEmptyInstance() => create();
  static $pb.PbList<TailRequest> createRepeated() => $pb.PbList<TailRequest>();
  @$core.pragma('dart2js:noInline')
  static TailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TailRequest>(create);
  static TailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get label => $_getSZ(0);
  @$pb.TagNumber(1)
  set label($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);
}

class TailResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TailResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LogEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entry', subBuilder: LogEntry.create)
    ..hasRequiredFields = false
  ;

  TailResponse._() : super();
  factory TailResponse({
    LogEntry? entry,
  }) {
    final _result = create();
    if (entry != null) {
      _result.entry = entry;
    }
    return _result;
  }
  factory TailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TailResponse clone() => TailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TailResponse copyWith(void Function(TailResponse) updates) => super.copyWith((message) => updates(message as TailResponse)) as TailResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TailResponse create() => TailResponse._();
  TailResponse createEmptyInstance() => create();
  static $pb.PbList<TailResponse> createRepeated() => $pb.PbList<TailResponse>();
  @$core.pragma('dart2js:noInline')
  static TailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TailResponse>(create);
  static TailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  LogEntry get entry => $_getN(0);
  @$pb.TagNumber(1)
  set entry(LogEntry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntry() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntry() => clearField(1);
  @$pb.TagNumber(1)
  LogEntry ensureEntry() => $_ensure(0);
}

class LogomotiveServiceApi {
  $pb.RpcClient _client;
  LogomotiveServiceApi(this._client);

  $async.Future<PushResponse> push($pb.ClientContext? ctx, PushRequest request) {
    var emptyResponse = PushResponse();
    return _client.invoke<PushResponse>(ctx, 'LogomotiveService', 'Push', request, emptyResponse);
  }
  $async.Future<FeedResponse> feed($pb.ClientContext? ctx, FeedRequest request) {
    var emptyResponse = FeedResponse();
    return _client.invoke<FeedResponse>(ctx, 'LogomotiveService', 'Feed', request, emptyResponse);
  }
  $async.Future<TailResponse> tail($pb.ClientContext? ctx, TailRequest request) {
    var emptyResponse = TailResponse();
    return _client.invoke<TailResponse>(ctx, 'LogomotiveService', 'Tail', request, emptyResponse);
  }
  $async.Future<LabelsResponse> labels($pb.ClientContext? ctx, LabelsRequest request) {
    var emptyResponse = LabelsResponse();
    return _client.invoke<LabelsResponse>(ctx, 'LogomotiveService', 'Labels', request, emptyResponse);
  }
}


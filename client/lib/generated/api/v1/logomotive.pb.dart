///
//  Generated code. Do not modify.
//  source: api/v1/logomotive.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $2;

class LogEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LogEntry', package: const $pb.PackageName('logomotive'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'message')
    ..aOS(3, 'label')
    ..aOM<$2.Timestamp>(4, 'time', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  LogEntry._() : super();
  factory LogEntry() => create();
  factory LogEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LogEntry clone() => LogEntry()..mergeFromMessage(this);
  LogEntry copyWith(void Function(LogEntry) updates) => super.copyWith((message) => updates(message as LogEntry));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogEntry create() => LogEntry._();
  LogEntry createEmptyInstance() => create();
  static $pb.PbList<LogEntry> createRepeated() => $pb.PbList<LogEntry>();
  @$core.pragma('dart2js:noInline')
  static LogEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogEntry>(create);
  static LogEntry _defaultInstance;

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
  $2.Timestamp get time => $_getN(3);
  @$pb.TagNumber(4)
  set time($2.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureTime() => $_ensure(3);
}

class LabelList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LabelList', package: const $pb.PackageName('logomotive'), createEmptyInstance: create)
    ..pPS(1, 'labels')
    ..hasRequiredFields = false
  ;

  LabelList._() : super();
  factory LabelList() => create();
  factory LabelList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabelList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LabelList clone() => LabelList()..mergeFromMessage(this);
  LabelList copyWith(void Function(LabelList) updates) => super.copyWith((message) => updates(message as LabelList));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LabelList create() => LabelList._();
  LabelList createEmptyInstance() => create();
  static $pb.PbList<LabelList> createRepeated() => $pb.PbList<LabelList>();
  @$core.pragma('dart2js:noInline')
  static LabelList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelList>(create);
  static LabelList _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get labels => $_getList(0);
}

class TailQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TailQuery', package: const $pb.PackageName('logomotive'), createEmptyInstance: create)
    ..aOS(1, 'label')
    ..hasRequiredFields = false
  ;

  TailQuery._() : super();
  factory TailQuery() => create();
  factory TailQuery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TailQuery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TailQuery clone() => TailQuery()..mergeFromMessage(this);
  TailQuery copyWith(void Function(TailQuery) updates) => super.copyWith((message) => updates(message as TailQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TailQuery create() => TailQuery._();
  TailQuery createEmptyInstance() => create();
  static $pb.PbList<TailQuery> createRepeated() => $pb.PbList<TailQuery>();
  @$core.pragma('dart2js:noInline')
  static TailQuery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TailQuery>(create);
  static TailQuery _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get label => $_getSZ(0);
  @$pb.TagNumber(1)
  set label($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);
}


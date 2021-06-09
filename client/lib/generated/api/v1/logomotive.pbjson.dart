///
//  Generated code. Do not modify.
//  source: api/v1/logomotive.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import '../../google/protobuf/timestamp.pbjson.dart' as $0;

@$core.Deprecated('Use logEntryDescriptor instead')
const LogEntry$json = const {
  '1': 'LogEntry',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'label', '3': 3, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'time'},
  ],
};

/// Descriptor for `LogEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logEntryDescriptor = $convert.base64Decode('CghMb2dFbnRyeRIOCgJpZBgBIAEoCVICaWQSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZRIUCgVsYWJlbBgDIAEoCVIFbGFiZWwSLgoEdGltZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBHRpbWU=');
@$core.Deprecated('Use pushRequestDescriptor instead')
const PushRequest$json = const {
  '1': 'PushRequest',
  '2': const [
    const {'1': 'entry', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LogEntry', '10': 'entry'},
  ],
};

/// Descriptor for `PushRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushRequestDescriptor = $convert.base64Decode('CgtQdXNoUmVxdWVzdBImCgVlbnRyeRgBIAEoCzIQLmFwaS52MS5Mb2dFbnRyeVIFZW50cnk=');
@$core.Deprecated('Use pushResponseDescriptor instead')
const PushResponse$json = const {
  '1': 'PushResponse',
  '2': const [
    const {'1': 'entry', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LogEntry', '10': 'entry'},
  ],
};

/// Descriptor for `PushResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushResponseDescriptor = $convert.base64Decode('CgxQdXNoUmVzcG9uc2USJgoFZW50cnkYASABKAsyEC5hcGkudjEuTG9nRW50cnlSBWVudHJ5');
@$core.Deprecated('Use feedRequestDescriptor instead')
const FeedRequest$json = const {
  '1': 'FeedRequest',
  '2': const [
    const {'1': 'entry', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LogEntry', '10': 'entry'},
  ],
};

/// Descriptor for `FeedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedRequestDescriptor = $convert.base64Decode('CgtGZWVkUmVxdWVzdBImCgVlbnRyeRgBIAEoCzIQLmFwaS52MS5Mb2dFbnRyeVIFZW50cnk=');
@$core.Deprecated('Use feedResponseDescriptor instead')
const FeedResponse$json = const {
  '1': 'FeedResponse',
  '2': const [
    const {'1': 'entry', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LogEntry', '10': 'entry'},
  ],
};

/// Descriptor for `FeedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedResponseDescriptor = $convert.base64Decode('CgxGZWVkUmVzcG9uc2USJgoFZW50cnkYASABKAsyEC5hcGkudjEuTG9nRW50cnlSBWVudHJ5');
@$core.Deprecated('Use labelsRequestDescriptor instead')
const LabelsRequest$json = const {
  '1': 'LabelsRequest',
};

/// Descriptor for `LabelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelsRequestDescriptor = $convert.base64Decode('Cg1MYWJlbHNSZXF1ZXN0');
@$core.Deprecated('Use labelsResponseDescriptor instead')
const LabelsResponse$json = const {
  '1': 'LabelsResponse',
  '2': const [
    const {'1': 'labels', '3': 1, '4': 3, '5': 9, '10': 'labels'},
  ],
};

/// Descriptor for `LabelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelsResponseDescriptor = $convert.base64Decode('Cg5MYWJlbHNSZXNwb25zZRIWCgZsYWJlbHMYASADKAlSBmxhYmVscw==');
@$core.Deprecated('Use tailRequestDescriptor instead')
const TailRequest$json = const {
  '1': 'TailRequest',
  '2': const [
    const {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `TailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tailRequestDescriptor = $convert.base64Decode('CgtUYWlsUmVxdWVzdBIUCgVsYWJlbBgBIAEoCVIFbGFiZWw=');
@$core.Deprecated('Use tailResponseDescriptor instead')
const TailResponse$json = const {
  '1': 'TailResponse',
  '2': const [
    const {'1': 'entry', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LogEntry', '10': 'entry'},
  ],
};

/// Descriptor for `TailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tailResponseDescriptor = $convert.base64Decode('CgxUYWlsUmVzcG9uc2USJgoFZW50cnkYASABKAsyEC5hcGkudjEuTG9nRW50cnlSBWVudHJ5');
const $core.Map<$core.String, $core.dynamic> LogomotiveServiceBase$json = const {
  '1': 'LogomotiveService',
  '2': const [
    const {'1': 'Push', '2': '.api.v1.PushRequest', '3': '.api.v1.PushResponse'},
    const {'1': 'Feed', '2': '.api.v1.FeedRequest', '3': '.api.v1.FeedResponse', '5': true, '6': true},
    const {'1': 'Tail', '2': '.api.v1.TailRequest', '3': '.api.v1.TailResponse', '6': true},
    const {'1': 'Labels', '2': '.api.v1.LabelsRequest', '3': '.api.v1.LabelsResponse'},
  ],
};

@$core.Deprecated('Use logomotiveServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> LogomotiveServiceBase$messageJson = const {
  '.api.v1.PushRequest': PushRequest$json,
  '.api.v1.LogEntry': LogEntry$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
  '.api.v1.PushResponse': PushResponse$json,
  '.api.v1.FeedRequest': FeedRequest$json,
  '.api.v1.FeedResponse': FeedResponse$json,
  '.api.v1.TailRequest': TailRequest$json,
  '.api.v1.TailResponse': TailResponse$json,
  '.api.v1.LabelsRequest': LabelsRequest$json,
  '.api.v1.LabelsResponse': LabelsResponse$json,
};

/// Descriptor for `LogomotiveService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List logomotiveServiceDescriptor = $convert.base64Decode('ChFMb2dvbW90aXZlU2VydmljZRIxCgRQdXNoEhMuYXBpLnYxLlB1c2hSZXF1ZXN0GhQuYXBpLnYxLlB1c2hSZXNwb25zZRI1CgRGZWVkEhMuYXBpLnYxLkZlZWRSZXF1ZXN0GhQuYXBpLnYxLkZlZWRSZXNwb25zZSgBMAESMwoEVGFpbBITLmFwaS52MS5UYWlsUmVxdWVzdBoULmFwaS52MS5UYWlsUmVzcG9uc2UwARI3CgZMYWJlbHMSFS5hcGkudjEuTGFiZWxzUmVxdWVzdBoWLmFwaS52MS5MYWJlbHNSZXNwb25zZQ==');

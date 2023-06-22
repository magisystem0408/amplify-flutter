// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.model.streaming_traits_require_length_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i2;

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'streaming_traits_require_length_input.g.dart';

abstract class StreamingTraitsRequireLengthInput
    with
        _i1.HttpInput<_i2.Stream<List<int>>>,
        _i3.AWSEquatable<StreamingTraitsRequireLengthInput>
    implements
        Built<StreamingTraitsRequireLengthInput,
            StreamingTraitsRequireLengthInputBuilder>,
        _i1.HasPayload<_i2.Stream<List<int>>> {
  factory StreamingTraitsRequireLengthInput({
    String? foo,
    _i2.Stream<List<int>>? blob,
  }) {
    blob ??= const _i2.Stream.empty();
    return _$StreamingTraitsRequireLengthInput._(
      foo: foo,
      blob: blob,
    );
  }

  factory StreamingTraitsRequireLengthInput.build(
          [void Function(StreamingTraitsRequireLengthInputBuilder) updates]) =
      _$StreamingTraitsRequireLengthInput;

  const StreamingTraitsRequireLengthInput._();

  factory StreamingTraitsRequireLengthInput.fromRequest(
    _i2.Stream<List<int>>? payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      StreamingTraitsRequireLengthInput.build((b) {
        b.blob = payload;
        if (request.headers['X-Foo'] != null) {
          b.foo = request.headers['X-Foo']!;
        }
      });

  static const List<_i1.SmithySerializer<_i2.Stream<List<int>>?>> serializers =
      [StreamingTraitsRequireLengthInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StreamingTraitsRequireLengthInputBuilder b) {
    b.blob = const _i2.Stream.empty();
  }

  String? get foo;
  _i2.Stream<List<int>>? get blob;
  @override
  _i2.Stream<List<int>>? getPayload() => blob;
  @override
  List<Object?> get props => [
        foo,
        blob,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StreamingTraitsRequireLengthInput')
          ..add(
            'foo',
            foo,
          )
          ..add(
            'blob',
            blob,
          );
    return helper.toString();
  }
}

class StreamingTraitsRequireLengthInputRestJson1Serializer
    extends _i1.PrimitiveSmithySerializer<_i2.Stream<List<int>>> {
  const StreamingTraitsRequireLengthInputRestJson1Serializer()
      : super('StreamingTraitsRequireLengthInput');

  @override
  Iterable<Type> get types => const [
        StreamingTraitsRequireLengthInput,
        _$StreamingTraitsRequireLengthInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  _i2.Stream<List<int>> deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return (serializers.deserialize(
      serialized,
      specifiedType: const FullType(
        _i2.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    ) as _i2.Stream<List<int>>);
  }

  @override
  Object serialize(
    Serializers serializers,
    _i2.Stream<List<int>> object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: const FullType(
        _i2.Stream,
        [
          FullType(
            List,
            [FullType(int)],
          )
        ],
      ),
    )!;
  }
}

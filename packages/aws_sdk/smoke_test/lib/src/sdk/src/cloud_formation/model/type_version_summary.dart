// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.type_version_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/registry_type.dart'
    as _i2;

part 'type_version_summary.g.dart';

/// Contains summary information about a specific version of a CloudFormation extension.
abstract class TypeVersionSummary
    with _i1.AWSEquatable<TypeVersionSummary>
    implements Built<TypeVersionSummary, TypeVersionSummaryBuilder> {
  /// Contains summary information about a specific version of a CloudFormation extension.
  factory TypeVersionSummary({
    _i2.RegistryType? type,
    String? typeName,
    String? versionId,
    bool? isDefaultVersion,
    String? arn,
    DateTime? timeCreated,
    String? description,
    String? publicVersionNumber,
  }) {
    return _$TypeVersionSummary._(
      type: type,
      typeName: typeName,
      versionId: versionId,
      isDefaultVersion: isDefaultVersion,
      arn: arn,
      timeCreated: timeCreated,
      description: description,
      publicVersionNumber: publicVersionNumber,
    );
  }

  /// Contains summary information about a specific version of a CloudFormation extension.
  factory TypeVersionSummary.build(
          [void Function(TypeVersionSummaryBuilder) updates]) =
      _$TypeVersionSummary;

  const TypeVersionSummary._();

  static const List<_i3.SmithySerializer> serializers = [
    TypeVersionSummaryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TypeVersionSummaryBuilder b) {}

  /// The kind of extension.
  _i2.RegistryType? get type;

  /// The name of the extension.
  String? get typeName;

  /// The ID of a specific version of the extension. The version ID is the value at the end of the Amazon Resource Name (ARN) assigned to the extension version when it's registered.
  String? get versionId;

  /// Whether the specified extension version is set as the default version.
  ///
  /// This applies only to private extensions you have registered in your account, and extensions published by Amazon. For public third-party extensions, CloudFormation returns `null`.
  bool? get isDefaultVersion;

  /// The Amazon Resource Name (ARN) of the extension version.
  String? get arn;

  /// When the version was registered.
  DateTime? get timeCreated;

  /// The description of the extension version.
  String? get description;

  /// For public extensions that have been activated for this account and region, the version of the public extension to be used for CloudFormation operations in this account and region. For any extensions other than activated third-arty extensions, CloudFormation returns `null`.
  ///
  /// How you specified `AutoUpdate` when enabling the extension affects whether CloudFormation automatically updates the extension in this account and region when a new version is released. For more information, see [Setting CloudFormation to automatically use new versions of extensions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-auto) in the _CloudFormation User Guide_.
  String? get publicVersionNumber;
  @override
  List<Object?> get props => [
        type,
        typeName,
        versionId,
        isDefaultVersion,
        arn,
        timeCreated,
        description,
        publicVersionNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TypeVersionSummary');
    helper.add(
      'type',
      type,
    );
    helper.add(
      'typeName',
      typeName,
    );
    helper.add(
      'versionId',
      versionId,
    );
    helper.add(
      'isDefaultVersion',
      isDefaultVersion,
    );
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'timeCreated',
      timeCreated,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'publicVersionNumber',
      publicVersionNumber,
    );
    return helper.toString();
  }
}

class TypeVersionSummaryAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<TypeVersionSummary> {
  const TypeVersionSummaryAwsQuerySerializer() : super('TypeVersionSummary');

  @override
  Iterable<Type> get types => const [
        TypeVersionSummary,
        _$TypeVersionSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TypeVersionSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TypeVersionSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RegistryType),
            ) as _i2.RegistryType);
          }
          break;
        case 'TypeName':
          if (value != null) {
            result.typeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'VersionId':
          if (value != null) {
            result.versionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IsDefaultVersion':
          if (value != null) {
            result.isDefaultVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'Arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TimeCreated':
          if (value != null) {
            result.timeCreated = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PublicVersionNumber':
          if (value != null) {
            result.publicVersionNumber = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as TypeVersionSummary);
    final result = <Object?>[
      const _i3.XmlElementName(
        'TypeVersionSummaryResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.type != null) {
      result
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i2.RegistryType),
        ));
    }
    if (payload.typeName != null) {
      result
        ..add(const _i3.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          payload.typeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.versionId != null) {
      result
        ..add(const _i3.XmlElementName('VersionId'))
        ..add(serializers.serialize(
          payload.versionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.isDefaultVersion != null) {
      result
        ..add(const _i3.XmlElementName('IsDefaultVersion'))
        ..add(serializers.serialize(
          payload.isDefaultVersion!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.arn != null) {
      result
        ..add(const _i3.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.timeCreated != null) {
      result
        ..add(const _i3.XmlElementName('TimeCreated'))
        ..add(serializers.serialize(
          payload.timeCreated!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publicVersionNumber != null) {
      result
        ..add(const _i3.XmlElementName('PublicVersionNumber'))
        ..add(serializers.serialize(
          payload.publicVersionNumber!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
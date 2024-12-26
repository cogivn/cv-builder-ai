// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Resource {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ResourceType get type => throw _privateConstructorUsedError;
  String get contentUrl => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResourceCopyWith<Resource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<$Res> {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) then) =
      _$ResourceCopyWithImpl<$Res, Resource>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      ResourceType type,
      String contentUrl,
      List<String> tags,
      bool isPremium,
      DateTime createdAt});
}

/// @nodoc
class _$ResourceCopyWithImpl<$Res, $Val extends Resource>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? contentUrl = null,
    Object? tags = null,
    Object? isPremium = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResourceType,
      contentUrl: null == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResourceImplCopyWith<$Res>
    implements $ResourceCopyWith<$Res> {
  factory _$$ResourceImplCopyWith(
          _$ResourceImpl value, $Res Function(_$ResourceImpl) then) =
      __$$ResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      ResourceType type,
      String contentUrl,
      List<String> tags,
      bool isPremium,
      DateTime createdAt});
}

/// @nodoc
class __$$ResourceImplCopyWithImpl<$Res>
    extends _$ResourceCopyWithImpl<$Res, _$ResourceImpl>
    implements _$$ResourceImplCopyWith<$Res> {
  __$$ResourceImplCopyWithImpl(
      _$ResourceImpl _value, $Res Function(_$ResourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? contentUrl = null,
    Object? tags = null,
    Object? isPremium = null,
    Object? createdAt = null,
  }) {
    return _then(_$ResourceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResourceType,
      contentUrl: null == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ResourceImpl implements _Resource {
  const _$ResourceImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.contentUrl,
      required final List<String> tags,
      required this.isPremium,
      required this.createdAt})
      : _tags = tags;

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final ResourceType type;
  @override
  final String contentUrl;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final bool isPremium;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Resource(id: $id, title: $title, description: $description, type: $type, contentUrl: $contentUrl, tags: $tags, isPremium: $isPremium, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      type,
      contentUrl,
      const DeepCollectionEquality().hash(_tags),
      isPremium,
      createdAt);

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      __$$ResourceImplCopyWithImpl<_$ResourceImpl>(this, _$identity);
}

abstract class _Resource implements Resource {
  const factory _Resource(
      {required final String id,
      required final String title,
      required final String description,
      required final ResourceType type,
      required final String contentUrl,
      required final List<String> tags,
      required final bool isPremium,
      required final DateTime createdAt}) = _$ResourceImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  ResourceType get type;
  @override
  String get contentUrl;
  @override
  List<String> get tags;
  @override
  bool get isPremium;
  @override
  DateTime get createdAt;

  /// Create a copy of Resource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResourceImplCopyWith<_$ResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Template {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get previewUrl => throw _privateConstructorUsedError;
  String get downloadUrl => throw _privateConstructorUsedError;
  List<String> get industries => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  int get downloads => throw _privateConstructorUsedError;

  /// Create a copy of Template
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemplateCopyWith<Template> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateCopyWith<$Res> {
  factory $TemplateCopyWith(Template value, $Res Function(Template) then) =
      _$TemplateCopyWithImpl<$Res, Template>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String previewUrl,
      String downloadUrl,
      List<String> industries,
      bool isPremium,
      int downloads});
}

/// @nodoc
class _$TemplateCopyWithImpl<$Res, $Val extends Template>
    implements $TemplateCopyWith<$Res> {
  _$TemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Template
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? previewUrl = null,
    Object? downloadUrl = null,
    Object? industries = null,
    Object? isPremium = null,
    Object? downloads = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      industries: null == industries
          ? _value.industries
          : industries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateImplCopyWith<$Res>
    implements $TemplateCopyWith<$Res> {
  factory _$$TemplateImplCopyWith(
          _$TemplateImpl value, $Res Function(_$TemplateImpl) then) =
      __$$TemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String previewUrl,
      String downloadUrl,
      List<String> industries,
      bool isPremium,
      int downloads});
}

/// @nodoc
class __$$TemplateImplCopyWithImpl<$Res>
    extends _$TemplateCopyWithImpl<$Res, _$TemplateImpl>
    implements _$$TemplateImplCopyWith<$Res> {
  __$$TemplateImplCopyWithImpl(
      _$TemplateImpl _value, $Res Function(_$TemplateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Template
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? previewUrl = null,
    Object? downloadUrl = null,
    Object? industries = null,
    Object? isPremium = null,
    Object? downloads = null,
  }) {
    return _then(_$TemplateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      industries: null == industries
          ? _value._industries
          : industries // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TemplateImpl implements _Template {
  const _$TemplateImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.previewUrl,
      required this.downloadUrl,
      required final List<String> industries,
      required this.isPremium,
      required this.downloads})
      : _industries = industries;

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String previewUrl;
  @override
  final String downloadUrl;
  final List<String> _industries;
  @override
  List<String> get industries {
    if (_industries is EqualUnmodifiableListView) return _industries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_industries);
  }

  @override
  final bool isPremium;
  @override
  final int downloads;

  @override
  String toString() {
    return 'Template(id: $id, name: $name, description: $description, previewUrl: $previewUrl, downloadUrl: $downloadUrl, industries: $industries, isPremium: $isPremium, downloads: $downloads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            const DeepCollectionEquality()
                .equals(other._industries, _industries) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.downloads, downloads) ||
                other.downloads == downloads));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      previewUrl,
      downloadUrl,
      const DeepCollectionEquality().hash(_industries),
      isPremium,
      downloads);

  /// Create a copy of Template
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateImplCopyWith<_$TemplateImpl> get copyWith =>
      __$$TemplateImplCopyWithImpl<_$TemplateImpl>(this, _$identity);
}

abstract class _Template implements Template {
  const factory _Template(
      {required final String id,
      required final String name,
      required final String description,
      required final String previewUrl,
      required final String downloadUrl,
      required final List<String> industries,
      required final bool isPremium,
      required final int downloads}) = _$TemplateImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get previewUrl;
  @override
  String get downloadUrl;
  @override
  List<String> get industries;
  @override
  bool get isPremium;
  @override
  int get downloads;

  /// Create a copy of Template
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemplateImplCopyWith<_$TemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

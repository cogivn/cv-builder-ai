// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  UserProfile get profile => throw _privateConstructorUsedError;
  SubscriptionPlan get subscription => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String email,
      String fullName,
      String? photoUrl,
      UserProfile profile,
      SubscriptionPlan subscription,
      DateTime createdAt});

  $UserProfileCopyWith<$Res> get profile;
  $SubscriptionPlanCopyWith<$Res> get subscription;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? fullName = null,
    Object? photoUrl = freezed,
    Object? profile = null,
    Object? subscription = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlan,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get profile {
    return $UserProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionPlanCopyWith<$Res> get subscription {
    return $SubscriptionPlanCopyWith<$Res>(_value.subscription, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String fullName,
      String? photoUrl,
      UserProfile profile,
      SubscriptionPlan subscription,
      DateTime createdAt});

  @override
  $UserProfileCopyWith<$Res> get profile;
  @override
  $SubscriptionPlanCopyWith<$Res> get subscription;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? fullName = null,
    Object? photoUrl = freezed,
    Object? profile = null,
    Object? subscription = null,
    Object? createdAt = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionPlan,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      required this.email,
      required this.fullName,
      this.photoUrl,
      required this.profile,
      required this.subscription,
      required this.createdAt});

  @override
  final String id;
  @override
  final String email;
  @override
  final String fullName;
  @override
  final String? photoUrl;
  @override
  final UserProfile profile;
  @override
  final SubscriptionPlan subscription;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'User(id: $id, email: $email, fullName: $fullName, photoUrl: $photoUrl, profile: $profile, subscription: $subscription, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, fullName, photoUrl,
      profile, subscription, createdAt);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      required final String email,
      required final String fullName,
      final String? photoUrl,
      required final UserProfile profile,
      required final SubscriptionPlan subscription,
      required final DateTime createdAt}) = _$UserImpl;

  @override
  String get id;
  @override
  String get email;
  @override
  String get fullName;
  @override
  String? get photoUrl;
  @override
  UserProfile get profile;
  @override
  SubscriptionPlan get subscription;
  @override
  DateTime get createdAt;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserProfile {
  String get profession => throw _privateConstructorUsedError;
  String? get industry => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  NotificationPreferences get notifications =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String profession,
      String? industry,
      String? location,
      NotificationPreferences notifications});

  $NotificationPreferencesCopyWith<$Res> get notifications;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profession = null,
    Object? industry = freezed,
    Object? location = freezed,
    Object? notifications = null,
  }) {
    return _then(_value.copyWith(
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      industry: freezed == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as NotificationPreferences,
    ) as $Val);
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationPreferencesCopyWith<$Res> get notifications {
    return $NotificationPreferencesCopyWith<$Res>(_value.notifications,
        (value) {
      return _then(_value.copyWith(notifications: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String profession,
      String? industry,
      String? location,
      NotificationPreferences notifications});

  @override
  $NotificationPreferencesCopyWith<$Res> get notifications;
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profession = null,
    Object? industry = freezed,
    Object? location = freezed,
    Object? notifications = null,
  }) {
    return _then(_$UserProfileImpl(
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String,
      industry: freezed == industry
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as NotificationPreferences,
    ));
  }
}

/// @nodoc

class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.profession,
      this.industry,
      this.location,
      required this.notifications});

  @override
  final String profession;
  @override
  final String? industry;
  @override
  final String? location;
  @override
  final NotificationPreferences notifications;

  @override
  String toString() {
    return 'UserProfile(profession: $profession, industry: $industry, location: $location, notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, profession, industry, location, notifications);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
          {required final String profession,
          final String? industry,
          final String? location,
          required final NotificationPreferences notifications}) =
      _$UserProfileImpl;

  @override
  String get profession;
  @override
  String? get industry;
  @override
  String? get location;
  @override
  NotificationPreferences get notifications;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubscriptionPlan {
  PlanType get type => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionPlanCopyWith<SubscriptionPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPlanCopyWith<$Res> {
  factory $SubscriptionPlanCopyWith(
          SubscriptionPlan value, $Res Function(SubscriptionPlan) then) =
      _$SubscriptionPlanCopyWithImpl<$Res, SubscriptionPlan>;
  @useResult
  $Res call(
      {PlanType type, DateTime startDate, DateTime? endDate, bool isActive});
}

/// @nodoc
class _$SubscriptionPlanCopyWithImpl<$Res, $Val extends SubscriptionPlan>
    implements $SubscriptionPlanCopyWith<$Res> {
  _$SubscriptionPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlanType,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionPlanImplCopyWith<$Res>
    implements $SubscriptionPlanCopyWith<$Res> {
  factory _$$SubscriptionPlanImplCopyWith(_$SubscriptionPlanImpl value,
          $Res Function(_$SubscriptionPlanImpl) then) =
      __$$SubscriptionPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlanType type, DateTime startDate, DateTime? endDate, bool isActive});
}

/// @nodoc
class __$$SubscriptionPlanImplCopyWithImpl<$Res>
    extends _$SubscriptionPlanCopyWithImpl<$Res, _$SubscriptionPlanImpl>
    implements _$$SubscriptionPlanImplCopyWith<$Res> {
  __$$SubscriptionPlanImplCopyWithImpl(_$SubscriptionPlanImpl _value,
      $Res Function(_$SubscriptionPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? isActive = null,
  }) {
    return _then(_$SubscriptionPlanImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlanType,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SubscriptionPlanImpl implements _SubscriptionPlan {
  const _$SubscriptionPlanImpl(
      {required this.type,
      required this.startDate,
      this.endDate,
      required this.isActive});

  @override
  final PlanType type;
  @override
  final DateTime startDate;
  @override
  final DateTime? endDate;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'SubscriptionPlan(type: $type, startDate: $startDate, endDate: $endDate, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionPlanImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, startDate, endDate, isActive);

  /// Create a copy of SubscriptionPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionPlanImplCopyWith<_$SubscriptionPlanImpl> get copyWith =>
      __$$SubscriptionPlanImplCopyWithImpl<_$SubscriptionPlanImpl>(
          this, _$identity);
}

abstract class _SubscriptionPlan implements SubscriptionPlan {
  const factory _SubscriptionPlan(
      {required final PlanType type,
      required final DateTime startDate,
      final DateTime? endDate,
      required final bool isActive}) = _$SubscriptionPlanImpl;

  @override
  PlanType get type;
  @override
  DateTime get startDate;
  @override
  DateTime? get endDate;
  @override
  bool get isActive;

  /// Create a copy of SubscriptionPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionPlanImplCopyWith<_$SubscriptionPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationPreferences {
  bool get analysisComplete => throw _privateConstructorUsedError;
  bool get weeklyTips => throw _privateConstructorUsedError;
  bool get newFeatures => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPreferencesCopyWith<NotificationPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPreferencesCopyWith<$Res> {
  factory $NotificationPreferencesCopyWith(NotificationPreferences value,
          $Res Function(NotificationPreferences) then) =
      _$NotificationPreferencesCopyWithImpl<$Res, NotificationPreferences>;
  @useResult
  $Res call({bool analysisComplete, bool weeklyTips, bool newFeatures});
}

/// @nodoc
class _$NotificationPreferencesCopyWithImpl<$Res,
        $Val extends NotificationPreferences>
    implements $NotificationPreferencesCopyWith<$Res> {
  _$NotificationPreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysisComplete = null,
    Object? weeklyTips = null,
    Object? newFeatures = null,
  }) {
    return _then(_value.copyWith(
      analysisComplete: null == analysisComplete
          ? _value.analysisComplete
          : analysisComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      weeklyTips: null == weeklyTips
          ? _value.weeklyTips
          : weeklyTips // ignore: cast_nullable_to_non_nullable
              as bool,
      newFeatures: null == newFeatures
          ? _value.newFeatures
          : newFeatures // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationPreferencesImplCopyWith<$Res>
    implements $NotificationPreferencesCopyWith<$Res> {
  factory _$$NotificationPreferencesImplCopyWith(
          _$NotificationPreferencesImpl value,
          $Res Function(_$NotificationPreferencesImpl) then) =
      __$$NotificationPreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool analysisComplete, bool weeklyTips, bool newFeatures});
}

/// @nodoc
class __$$NotificationPreferencesImplCopyWithImpl<$Res>
    extends _$NotificationPreferencesCopyWithImpl<$Res,
        _$NotificationPreferencesImpl>
    implements _$$NotificationPreferencesImplCopyWith<$Res> {
  __$$NotificationPreferencesImplCopyWithImpl(
      _$NotificationPreferencesImpl _value,
      $Res Function(_$NotificationPreferencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? analysisComplete = null,
    Object? weeklyTips = null,
    Object? newFeatures = null,
  }) {
    return _then(_$NotificationPreferencesImpl(
      analysisComplete: null == analysisComplete
          ? _value.analysisComplete
          : analysisComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      weeklyTips: null == weeklyTips
          ? _value.weeklyTips
          : weeklyTips // ignore: cast_nullable_to_non_nullable
              as bool,
      newFeatures: null == newFeatures
          ? _value.newFeatures
          : newFeatures // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NotificationPreferencesImpl implements _NotificationPreferences {
  const _$NotificationPreferencesImpl(
      {required this.analysisComplete,
      required this.weeklyTips,
      required this.newFeatures});

  @override
  final bool analysisComplete;
  @override
  final bool weeklyTips;
  @override
  final bool newFeatures;

  @override
  String toString() {
    return 'NotificationPreferences(analysisComplete: $analysisComplete, weeklyTips: $weeklyTips, newFeatures: $newFeatures)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPreferencesImpl &&
            (identical(other.analysisComplete, analysisComplete) ||
                other.analysisComplete == analysisComplete) &&
            (identical(other.weeklyTips, weeklyTips) ||
                other.weeklyTips == weeklyTips) &&
            (identical(other.newFeatures, newFeatures) ||
                other.newFeatures == newFeatures));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, analysisComplete, weeklyTips, newFeatures);

  /// Create a copy of NotificationPreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPreferencesImplCopyWith<_$NotificationPreferencesImpl>
      get copyWith => __$$NotificationPreferencesImplCopyWithImpl<
          _$NotificationPreferencesImpl>(this, _$identity);
}

abstract class _NotificationPreferences implements NotificationPreferences {
  const factory _NotificationPreferences(
      {required final bool analysisComplete,
      required final bool weeklyTips,
      required final bool newFeatures}) = _$NotificationPreferencesImpl;

  @override
  bool get analysisComplete;
  @override
  bool get weeklyTips;
  @override
  bool get newFeatures;

  /// Create a copy of NotificationPreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPreferencesImplCopyWith<_$NotificationPreferencesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

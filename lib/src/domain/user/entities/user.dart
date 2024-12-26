import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String fullName,
    String? photoUrl,
    required UserProfile profile,
    required SubscriptionPlan subscription,
    required DateTime createdAt,
  }) = _User;
}

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String profession,
    String? industry,
    String? location,
    required NotificationPreferences notifications,
  }) = _UserProfile;
}

@freezed
class SubscriptionPlan with _$SubscriptionPlan {
  const factory SubscriptionPlan({
    required PlanType type,
    required DateTime startDate,
    DateTime? endDate,
    required bool isActive,
  }) = _SubscriptionPlan;
}

enum PlanType {
  free,
  premium,
  enterprise
}

@freezed
class NotificationPreferences with _$NotificationPreferences {
  const factory NotificationPreferences({
    required bool analysisComplete,
    required bool weeklyTips,
    required bool newFeatures,
  }) = _NotificationPreferences;
} 
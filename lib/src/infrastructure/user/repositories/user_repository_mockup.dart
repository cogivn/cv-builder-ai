import 'dart:ffi';

import 'package:cv_builder_ai/src/core/errors/api_error.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:result_dart/result_dart.dart';
import '../../../core/config/environment.dart';
import '../../../domain/user/repositories/user_repository.dart';
import '../../../domain/user/entities/user.dart';
import '../../../domain/user/value_objects/email.dart';

@alpha
@Singleton(as: UserRepository)
class UserRepositoryMockup implements UserRepository {
  final _uuid = const Uuid();
  final _mockUsers = <User>[
    User(
      id: 'user_1',
      email: 'test@example.com',
      fullName: 'Test User',
      photoUrl: 'https://mock.url/avatar1.jpg',
      profile: UserProfile(
        profession: 'Software Engineer',
        industry: 'Technology',
        location: 'New York',
        notifications: NotificationPreferences(
          analysisComplete: true,
          weeklyTips: true,
          newFeatures: true,
        ),
      ),
      subscription: SubscriptionPlan(
        type: PlanType.free,
        startDate: DateTime.now().subtract(const Duration(days: 30)),
        endDate: null,
        isActive: true,
      ),
      createdAt: DateTime.now().subtract(const Duration(days: 30)),
    ),
  ];

  @override
  Future<Result<User>> signUp(String email, String password) async {
    try {
      // Check if email already exists
      if (_mockUsers.any((u) => u.email == email)) {
        return Failure(ApiError.request(message: 'Email already registered'));
      }

      final newUser = User(
        id: _uuid.v4(),
        email: email,
        fullName: email.split('@')[0], // Default name from email
        photoUrl: null,
        profile: UserProfile(
          profession: '',
          industry: null,
          location: null,
          notifications: NotificationPreferences(
            analysisComplete: true,
            weeklyTips: true,
            newFeatures: true,
          ),
        ),
        subscription: SubscriptionPlan(
          type: PlanType.free,
          startDate: DateTime.now(),
          endDate: null,
          isActive: true,
        ),
        createdAt: DateTime.now(),
      );

      _mockUsers.add(newUser);
      return Success(newUser);
    } catch (e) {
      return Failure(
          ApiError.request(message: 'Failed to sign up: ${e.toString()}'));
    }
  }

  @override
  Future<Result<User>> signIn(String email, String password) async {
    try {
      final user = _mockUsers.firstWhere(
        (u) => u.email == email,
        orElse: () => throw Exception('User not found'),
      );
      return Success(user);
    } catch (e) {
      return Failure(ApiError.request(message: 'Invalid email or password'));
    }
  }

  @override
  Future<Result<void>> signOut() async {
    try {
      // Simulate sign out delay
      await Future.delayed(const Duration(milliseconds: 500));
      return const Success(Void);
    } catch (e) {
      return Failure(
          ApiError.request(message: 'Failed to sign out: ${e.toString()}'));
    }
  }

  @override
  Future<Result<User>> getById(String id) async {
    try {
      final user = _mockUsers.firstWhere((u) => u.id == id);
      return Success(user);
    } catch (e) {
      return Failure(ApiError.request(message: 'User not found'));
    }
  }

  @override
  Future<Result<User>> getByEmail(Email email) async {
    try {
      final user = _mockUsers.firstWhere((u) => u.email == email.value);
      return Success(user);
    } catch (e) {
      return Failure(ApiError.request(message: 'User not found'));
    }
  }

  @override
  Future<Result<User>> update(User user) async {
    try {
      final index = _mockUsers.indexWhere((u) => u.id == user.id);
      if (index == -1) throw Exception('User not found');

      _mockUsers[index] = user;
      return Success(user);
    } catch (e) {
      return Failure(
          ApiError.request(message: 'Failed to update user: ${e.toString()}'));
    }
  }

  @override
  Future<Result<bool>> delete(String id) async {
    try {
      _mockUsers.removeWhere((u) => u.id == id);
      return const Success(true);
    } catch (e) {
      return Failure(
          ApiError.request(message: 'Failed to delete user: ${e.toString()}'));
    }
  }

  @override
  Future<Result<bool>> updateSubscription(
      String userId, SubscriptionPlan plan) async {
    try {
      final index = _mockUsers.indexWhere((u) => u.id == userId);
      if (index == -1) throw Exception('User not found');

      _mockUsers[index] = _mockUsers[index].copyWith(subscription: plan);
      return const Success(true);
    } catch (e) {
      return Failure(ApiError.request(
          message: 'Failed to update subscription: ${e.toString()}'));
    }
  }

  @override
  Future<Result<bool>> updateNotificationPreferences(
    String userId,
    NotificationPreferences preferences,
  ) async {
    try {
      final index = _mockUsers.indexWhere((u) => u.id == userId);
      if (index == -1) throw Exception('User not found');

      _mockUsers[index] = _mockUsers[index].copyWith(
        profile: _mockUsers[index].profile.copyWith(
              notifications: preferences,
            ),
      );
      return const Success(true);
    } catch (e) {
      return Failure(ApiError.request(
          message:
              'Failed to update notification preferences: ${e.toString()}'));
    }
  }
}

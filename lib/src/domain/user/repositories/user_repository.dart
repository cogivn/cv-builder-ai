import 'package:result_dart/result_dart.dart';

import '../entities/user.dart';
import '../value_objects/email.dart';


abstract class UserRepository {
  // Authentication
  Future<Result<User>> signUp(String email, String password);
  Future<Result<User>> signIn(String email, String password);
  Future<Result<void>> signOut();
  
  // CRUD operations
  Future<Result<User>> getById(String id);
  Future<Result<User>> getByEmail(Email email);
  Future<Result<User>> update(User user);
  Future<Result<bool>> delete(String id);
  
  // Subscription & Preferences
  Future<Result<bool>> updateSubscription(String userId, SubscriptionPlan plan);
  Future<Result<bool>> updateNotificationPreferences(
    String userId, 
    NotificationPreferences preferences
  );
} 
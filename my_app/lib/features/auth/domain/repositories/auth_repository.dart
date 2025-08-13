import '../entities/user.dart';

abstract class AuthRepository {
  Future<User> signIn({required String email, required String password});
}

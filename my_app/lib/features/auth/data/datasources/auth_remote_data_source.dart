import '../../../../core/errors/exceptions.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signIn(String email, String password);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<UserModel> signIn(String email, String password) async {
    // شبیه‌سازی درخواست API
    await Future.delayed(const Duration(seconds: 1));

    if (email == 'test@example.com' && password == '123456') {
      return UserModel(id: '1', email: email);
    } else {
      throw AuthException('Invalid credentials');
    }
  }
}

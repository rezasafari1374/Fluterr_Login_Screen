import '../../../../core/errors/exceptions.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<User> signIn({required String email, required String password}) async {
    try {
      return await remoteDataSource.signIn(email, password);
    } on AuthException {
      rethrow;
    } catch (_) {
      throw ServerException('Unexpected error occurred');
    }
  }
}

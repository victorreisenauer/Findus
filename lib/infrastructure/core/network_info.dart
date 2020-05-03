import 'package:injectable/injectable.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@RegisterAs(NetworkInfo)
@injectable
class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  const NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}

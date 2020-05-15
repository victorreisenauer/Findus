import 'package:injectable/injectable.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:mockito/mockito.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@RegisterAs(NetworkInfo, env: Environment.prod)
@injectable
class NetworkInfoImpl implements NetworkInfo {
  final DataConnectionChecker connectionChecker;

  const NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}

@RegisterAs(NetworkInfo, env: Environment.dev)
@injectable
class DevNetworkInfoImpl extends NetworkInfoImpl {
  final DataConnectionChecker connectionChecker;

  const DevNetworkInfoImpl(this.connectionChecker) : super(connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}

@RegisterAs(NetworkInfo, env: Environment.test)
@injectable
class TestNetworkInfoImpl extends Mock implements NetworkInfo {}

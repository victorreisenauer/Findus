import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfoFacade {
  Future<bool> get isConnected;
}

class NetworkInfoRepository implements NetworkInfoFacade {
  final DataConnectionChecker connectionChecker;

  const NetworkInfoRepository(this.connectionChecker);

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}

class RemoteException implements Exception {}

class ServerNotReachableException extends RemoteException {}

class InvalidSessionException extends RemoteException {}

class InvalidLoginDetailsException extends RemoteException {}

class NoLoggedInUserException extends RemoteException {}

class AccountNotFoundException extends RemoteException {}

class WeakPasswordException extends RemoteException {}

class InvalidEmailException extends RemoteException {}

class EmailAlreadyInUseException extends RemoteException {}

class UnknownRemoteException extends RemoteException {}

class InvalidEmailAndPasswordCombinationException extends RemoteException {}

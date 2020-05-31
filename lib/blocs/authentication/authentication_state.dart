import 'package:equatable/equatable.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

// uninitialized - waiting to see if the user is authenticated or not on app start
class Uninitialized extends AuthenticationState {}

// authenticated - successfully authenticated
class Authenticated extends AuthenticationState {
  final String displayName;

  const Authenticated(this.displayName);

  @override
  List<Object> get props => [displayName];

  @override
  String toString() => 'Authenticated { displayName: $displayName }';
}

// unauthenticated - not authenticated
class Unauthenticated extends AuthenticationState {}

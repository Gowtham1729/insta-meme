import 'package:equatable/equatable.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

// an AppStarted event to notify the bloc that it needs to check if the user is currently authenticated or not
class AppStarted extends AuthenticationEvent {}

// a LoggedIn event to notify the bloc that the user has successfully logged in.
class LoggedIn extends AuthenticationEvent {}

// a LoggedOut event to notify the bloc that the user has successfully logged out.
class LoggedOut extends AuthenticationEvent {}

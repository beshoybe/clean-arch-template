import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure({required this.message});
  @override
  List<Object?> get props => [];
}

class ServerError extends Failure {
  const ServerError({required super.message});
}

class LocalDbError extends Failure {
  const LocalDbError({required super.message});
}

class CacheError extends Failure {
  const CacheError({required super.message});
}

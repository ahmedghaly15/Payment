abstract class Failure {
  final String failure;

  const Failure({required this.failure});
}

class ServerFailure extends Failure {
  const ServerFailure({required String failure}) : super(failure: failure);
}

class Failure {
  const Failure.empty() : message = '';
  const Failure(this.message);

  final String message;
}

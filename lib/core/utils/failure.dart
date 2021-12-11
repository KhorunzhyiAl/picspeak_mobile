class Failure {
  const Failure.empty()
      : message = '',
        type = FailureType.other;

  const Failure(
    this.message, {
    this.type = FailureType.other,
  });

  final FailureType type;
  final String message;
}

enum FailureType {
  other,
  noConnection,
}

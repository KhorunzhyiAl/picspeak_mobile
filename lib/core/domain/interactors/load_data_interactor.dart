import 'package:dartz/dartz.dart';
import 'package:picspeak/core/domain/interactors/await_for_connection_interactor.dart';
import 'package:picspeak/core/utils/failure.dart';
import 'package:picspeak/core/utils/loading_state/loading_state.dart';
import 'package:picspeak/core/utils/result/result.dart';

/// Manages the states of loading data.
class LoadDataInteractor<T> {
  LoadDataInteractor(this._awaitForConnectionInteractor);

  final AwaitForConnectionInteractor _awaitForConnectionInteractor;

  Stream<LoadingState<T>> call({
    required Future<Result<T>> Function() loadData,
    Option<T> cached = const None(),
  }) async* {
    yield LoadingState.loading(cached: cached);

    _awaitForConnectionInteractor();
    final channelResult = await loadData();

    yield* channelResult.map(
      ok: (a) async* {
        yield LoadingState.ready(a.value);
      },
      failure: (a) async* {
        yield LoadingState.failed(a.failure);
        if (a.failure.type == FailureType.noConnection) {
          yield* call(
            loadData: loadData,
            cached: cached,
          );
        }
      },
    );
  }
}

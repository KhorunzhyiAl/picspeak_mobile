import 'package:freezed_annotation/freezed_annotation.dart';
part 'loading_state.freezed.dart';

/// A pattern for loading data asynchronously.
/// 
/// When using a variable that is loaded asynchronously, it usually can be in one of the three 
/// states:
/// 
/// - Just started loading and is currently unknown ([LoadingState.loading])
/// - Has been loaded, but something went wrong (for example, an incorrect id or uri was requested)
/// ([LoadingState.failed])
/// - The data has been loaded successfully and can be accessed ([LoadingState.ready]) 
@freezed
class LoadingState<T> with _$LoadingState<T> {
  const factory LoadingState.loading() = Loading;
  const factory LoadingState.ready(T data) = Ready<T>;
  const factory LoadingState.failed([@Default('') String message]) = Failed;
}
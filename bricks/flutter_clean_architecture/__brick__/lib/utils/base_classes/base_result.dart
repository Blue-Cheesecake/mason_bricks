import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils.dart';

part 'base_result.freezed.dart';

@freezed
class BaseResult<T> with _$BaseResult<T> {
  const factory BaseResult.success(T data) = Success<T>;
  const factory BaseResult.failure(AnyException exception) = Failure;
}

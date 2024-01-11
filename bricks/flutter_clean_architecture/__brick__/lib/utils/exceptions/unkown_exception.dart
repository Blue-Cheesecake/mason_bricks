import '../utils.dart';

final class UnknownException extends AnyException {
  UnknownException() : super(message: CommonMessages.unknownException);
}

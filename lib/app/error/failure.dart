import 'error_handler.dart';

class Failure {
  final int code;
  final String? title;
  final String message;

  Failure({required this.code, required this.message, this.title});
}

class DefaultFailure extends Failure {
  DefaultFailure()
      : super(
          code: ResponseCode.default_,
          message: ResponseMessage.default_,
        );
}

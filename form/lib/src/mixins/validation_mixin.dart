import 'dart:async';

class ValidationMixin {
  static const String PATTERN_EMAIL =
      "^([0-9a-zA-Z]([-.+\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{2,9})\$";
  static const String PATTERN_PASSWORD =
      "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#\$%?])[0-9a-zA-Z@#\$%?]{8,15}\$";

  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (new RegExp(PATTERN_EMAIL).hasMatch(email) == false) {
        sink.addError('The E-mail Address must be a valid email address.');
      } else {
        sink.add(email);
      }
    },
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if (new RegExp(PATTERN_PASSWORD).hasMatch(password) == false) {
        sink.addError('The Password must be more secure.');
      } else {
        sink.add(password);
      }
    },
  );
}

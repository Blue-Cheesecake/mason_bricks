final class CommonMessages {
  CommonMessages._();

  static const unknownException = 'An unknown exception is occurred';
  {{#is_rest_api_app}}static const internetIsNotConnected = 'This app does not connect to internet yet.';{{/is_rest_api_app}}
}

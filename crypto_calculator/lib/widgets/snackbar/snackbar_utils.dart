class SnackbarUtils {
  SnackbarUtils._();

  static String errorMessage = '';

  static void config(String error) {
    errorMessage = error;
  }
}

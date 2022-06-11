class Utils {
  static String getErrorMessage(String username, String password) {
    if (username.isEmpty || password.isEmpty) {
      return 'กรุณาระบุ username และ password';
    } else {
      bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(username);
      if (emailValid) {
        if (username == 'foo@example.com' && password == 'Qwe12345') {
          return 'pass';
        } else {
          return 'กรุณาตรวจสอบ username หรือรหัสผ่าน';
        }
      } else {
        return 'รูปแบบ email ไม่ถูกต้อง';
      }
    }
  }
}

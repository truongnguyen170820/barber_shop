

class Validator{
  static final instance = Validator();

  bool IsEmail(String _email)
  {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(_email)&&(!_email.contains("/"));
  }

  bool IsDate(String _date)
  {
    return RegExp(
        r'^(0?[1-9]|[12][0-9]|3[01])[\/](0?[1-9]|1[012])[\/\-]\d{4}$')
        .hasMatch(_date);
  }

  bool IsPhoneNumber(String value) {
    String pattern = r'(^(?:[+0][9|3|8|7|1|5])?[0-9]{8,10}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return false;
    }
    else if (!regExp.hasMatch(value)) {
      return false;
    }
    return true;
  }
}
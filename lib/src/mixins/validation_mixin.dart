class ValidationMixin {
  String validateEmail(String email) {
    var emailMsg = "";
    if (email != '') {
      emailMsg = "Fill cannot be left empty";
    } else if (!email.contains('@')) {
      emailMsg = "Please enter a valid email";
    }
    return emailMsg;
  }

  String validatePassword(String password) {
    var passwordMsg = "";
    if (password.length < 4) {
      passwordMsg = "Password must at least be 4 characters";
    }
    return passwordMsg;
  }
}

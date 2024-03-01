class Validator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    //Regular expression for email validator
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return "Invalid email";
    }
    return null;
  }

  //Validate passwords
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    //check for minimum password length
    if (value.length < 6) {
      return "Password must be at least 6 characters long";
    }
    //check for uppercase
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at least one uppercase letter";
    }
    //check for lowercase
    if (!value.contains(RegExp(r'[a-z]'))) {
      return "Password must contain at least one lowercase letter";
    }
    //check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number";
    }
    //check for special characters
    if (!value.contains(RegExp(r'[\W]'))) {
      return "Password must contain at least one special character";
    }
    return null;
  }

  //validate phone number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    }
    //Regular expression for phone number validator
    final phoneNumberRegExp = RegExp(r'^\+[1-9]\d{1,11}$');
    if (!phoneNumberRegExp.hasMatch(value)) {
      return "Invalid phone number";
    }
    return null;
  }
}

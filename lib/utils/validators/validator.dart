class TValidator {

  static String? validateEmail(String? value) {
    if(value == null || value.isEmpty) {
      return 'Email is required';
    }

    //Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }

    return null;
  }


  // Validate Password
  static String? validatePassword(String? value) {
    if(value == null || value.isEmpty) {
      return 'Password is required';
    }

    //Check minimum password length
    if(value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    //Check upperCase letters
    if(!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    //Check numbers
    if(!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain atleast one number';
    }

    //Check special characters
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Password must contain at least one special character';
    }

    return null;
  }


  // Validate phone number
  static String? validatePhoneNumber(String? value) {
    if(value == null || value.isEmpty) {
      return "Phone number is required";
    }

    // Regular expression for phone number assuming a 10-digit UG phone number
    final phoneRegEXp = RegExp(r'^\d{10}$');

    if(!phoneRegEXp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required)';
    }

    return null;
  }
}


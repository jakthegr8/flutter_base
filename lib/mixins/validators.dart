class Validators {
  String validateFirstName(String value) {
    if (value.trim().isEmpty) {
      return "Name is required";
    } else {
      return null;
    }
  }

  String validatePhone(String value) {
    if (value.trim().isEmpty ||
        !RegExp(r'^(?:[1-9]\d*|0)?(?:\.\d+)?$').hasMatch(value)) {
      return "Please enter a valid phone number";
    } else
      return null;
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.trim().isEmpty) {
      return "Please enter an email address";
    } else if (!regex.hasMatch(value))
      return "Please enter a valid email address";
    else
      return null;
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class Constants {
  // this is native property and it includs kotlin so restart of app is required
  static SharedPreferences pref;
  // The static keyword is used to declare the class variable and method. It generally manages the memory for the global data variable.
  // A static function is a member function of a class that can be called even when an object of the class is not initialized.
  // if we declare the data member as static then we can access it without creating an object.
}

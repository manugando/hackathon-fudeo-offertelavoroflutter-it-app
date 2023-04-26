import 'package:hive/hive.dart';

class AppPreferencesRepository {
  static const appPreferencesBox = 'appPreferencesBox';
  static const onboardingDone = 'onboardingDone';

  void setOnboardingDone(bool done) {
    _getBox().put(onboardingDone, done);
  }

  bool isOnboardingDone() {
    return _getBox().get(onboardingDone, defaultValue: false);
  }

  Box _getBox() {
    return Hive.box(appPreferencesBox);
  }
}
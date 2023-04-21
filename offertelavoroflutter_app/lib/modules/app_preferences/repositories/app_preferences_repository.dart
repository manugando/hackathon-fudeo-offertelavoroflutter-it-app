import 'package:hive/hive.dart';

class AppPreferencesRepository {
  static const appPreferencesBox = 'appPreferencesBox';
  static const onboardingDone = 'onboardingDone';

  Future setOnboardingDone(bool done) async {
    Box box = await _openBox();
    await box.put(onboardingDone, done);
  }

  Future<bool> isOnboardingDone() async {
    Box box = await _openBox();
    return box.get(onboardingDone, defaultValue: false);
  }

  Future<Box> _openBox() {
    return Hive.openBox(appPreferencesBox);
  }
}
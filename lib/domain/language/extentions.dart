import 'appLocalization.dart';

extension Languange on String {
  String get translate => AppLocalizations.instance.translate(this);
}

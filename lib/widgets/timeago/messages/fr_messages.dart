import 'lookupmessages.dart';

/// French messages
class FrMessages implements LookupMessages {
  @override
  String prefixAgo() => 'il y a';
  @override
  String prefixFromNow() => "d'ici";
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => "moins d'une minute";

  @override
  String minutes(int minutes) => 'environ $minutes minutes';

  @override
  String hours(int hours) => '$hours heures';

  @override
  String days(int days) => 'environ $days jours';

  @override
  String months(int months) => 'environ $months mois';

  @override
  String years(int years) => '$years ans';

  @override
  String wordSeparator() => ' ';
}

/// French short messages
class FrShortMessages implements LookupMessages {
  @override
  String prefixAgo() => 'il y a';
  @override
  String prefixFromNow() => "d'ici";
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => "moins d'une minute";

  @override
  String minutes(int minutes) => '$minutes minutes';

  @override
  String hours(int hours) => '$hours heures';

  @override
  String days(int days) => '$days jours';

  @override
  String months(int months) => '$months mois';

  @override
  String years(int years) => '$years ans';

  @override
  String wordSeparator() => ' ';
}

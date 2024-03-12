import 'package:teste_dev/components/period_kind.dart';

class Period {
  final String title;
  final DateTime start;
  final DateTime ends;
  final PeriodKind kind;
  final int goal1;
  final int goal2;

  Period({
    required this.title,
    required this.start,
    required this.ends,
    required this.kind,
    required this.goal1,
    required this.goal2,
  });
}

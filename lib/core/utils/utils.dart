class Utils {
  static String formatDateTime(DateTime date) {
    return '${date.year}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}  '
        '${date.hour.toString().padLeft(2, '0')}:'
        '${date.minute.toString().padLeft(2, '0')}';
  }

  static String formatDuration(Duration duration) {
    final d = duration;
    var result = '';

    if (d.inDays > 0) result += '${d.inDays}d ';
    if (d.inHours > 0) result += '${(d.inHours % 24)}h ';
    if (d.inMinutes > 0) result += '${(d.inMinutes % 60).toString().padLeft(2, '0')}m';

    return result;
  }

  // TODO: remove this:
  static const String loremIpsum = '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut 
labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
esse cillum dolore eu fugiat nulla pariatur.
''';
}

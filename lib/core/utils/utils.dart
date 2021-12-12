class Utils {
  static String formatDateTime(DateTime date) {
    return '${date.year}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}  '
        '${date.hour.toString().padLeft(2, '0')}:'
        '${date.minute.toString().padLeft(2, '0')}';
  }

  static String formatDuration(Duration duration) {
    final d = duration; // it's shorter
    var result = '';

    if (d.inDays > 0) result += '${d.inDays}d ';
    if (d.inHours > 0) result += '${(d.inHours % 24)}h ';
    if (d.inMinutes > 0) result += '${(d.inMinutes % 60).toString().padLeft(2, '0')}m';

    return result;
  }
}

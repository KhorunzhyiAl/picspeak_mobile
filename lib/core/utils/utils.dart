class Utils {
  static String formatDateTime(DateTime date) {
    return '${date.year}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}  '
        '${date.hour.toString().padLeft(2, '0')}:'
        '${date.minute.toString().padLeft(2, '0')}';
  }

  static String formatDuration(Duration duration) {
    var result = '';

    if (duration.inDays > 0) result += '${duration.inDays}d ';
    if (duration.inHours > 0) result += '${duration.inHours}h ';
    if (duration.inMinutes > 0) result += '${duration.inMinutes.toString().padLeft(2, '0')}m';

    return result;
  }
}

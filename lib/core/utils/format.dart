import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toAgo() {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inMinutes < 1) {
      return '방금 전';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes}분 전';
    } else if (difference.inDays < 1) {
      return '${difference.inHours}시간 전';
    } else {
      return '${difference.inDays}일 전';
    }
  }

  String toyyyyMMdd() {
    return DateFormat('yyyy-MM-dd').format(toLocal());
  }
}

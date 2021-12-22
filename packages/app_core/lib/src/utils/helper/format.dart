import 'package:intl/intl.dart';

/// AOF 15 10 2021
/// ใช้ในการจัดรูปแบบของข้อความที่เป็นประเภทตัวเลขให้มีรูปแบบเป็นCurrency number
/// Example :
/// ```dart
/// '฿${(formatCurrency.format(standardPrice)).toString()}'
/// ```
final formatCurrency = NumberFormat('#,##0.00');
final formatNumber = NumberFormat('#,###');

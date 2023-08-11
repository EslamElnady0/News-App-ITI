import 'package:intl/intl.dart';

const baseUrl = "https://newsapi.org/v2/everything";
const apiKey = "e833c1f80a5b4c96ad48942b7b9f9a72";

DateTime targetDate = DateTime.now().subtract(const Duration(days: 15));
String formattedDate = DateFormat('yyyy-MM-dd').format(targetDate);

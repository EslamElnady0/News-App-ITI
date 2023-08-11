import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/Data/Models/all_news/all_news.dart';
import 'package:news_app/Global/constants.dart';

class AllNewsRepo {
  Future<AllNews?> getAllNews(String query) async {
    try {
      var response = await http.get(Uri.parse(
          "$baseUrl?q=$query&from=$formattedDate&sortBy=publishedAt&apiKey=$apiKey"));
      Map<String, dynamic> decodedResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        AllNews data = AllNews.fromJson(decodedResponse);

        return data;
      } else {
        print("http request failed");
        return null;
      }
    } catch (e) {
      print("error : " + e.toString());
      return null;
    }
  }
}

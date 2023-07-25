import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/Data/Models/all_news/all_news.dart';

class AllNewsRepo {
  Future<AllNews?> getAllNews(String query) async {
    try {
      var response = await http.get(Uri.parse(
          "https://newsapi.org/v2/everything?q=$query&from=2023-07-15&sortBy=publishedAt&apiKey=cb4e6563ff2b457383df79754ad60aae"));
      Map<String, dynamic> decodedResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        AllNews data = AllNews.fromJson(decodedResponse);

        return data;
      } else {
        print("request failed");
        return null;
      }
    } catch (e) {
      print("error : " + e.toString());
      return null;
    }
  }
}

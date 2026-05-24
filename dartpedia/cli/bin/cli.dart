import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

const version = '0.0.1' ;
void main(List<String> arguments) async {
  var runner = CommandRunner();
  await runner.run(arguments);
}

Future<String> getWikipediaArticle(String articleTitle) async {
  final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle');

  final response = await http.get(url);

  if (response.statusCode == 200){
    return response.body;
  }

  return 'Error: Failed to fetch article $articleTitle. Status code ${response.statusCode}';

}




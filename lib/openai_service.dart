import 'dart:convert';

import 'package:chatbot/secrets.dart';
import 'package:http/http.dart' as http;

class OpenAiService {


  Future<String> isArtPrompt(String prompt) async {
    try {
      final res = await http.post(
          Uri.parse(' https: //api.openai.com/v1/completions'),
              headers: <String, String > {
                'Content-Type': 'application/json',
                'Authorization': 'Bearer YOUR_API_KEY',
              },
              body: jsonEncode({
                "model": "text-davinci-003",
                'masages': [
                  {
                    'prompt': prompt,
                    'max_tokens': 150,
                    'temperature': 0.7,
                    'n': 1,
                    'stop': '\n',
                  },
                ]
              }));
          print(res.body);
      if (res.statusCode == 200) {
        String  prompt = jsonDecode(res.body)['choices'][0]['masage']['text'];

        prompt = prompt.trim();


      }
      return 'AI'; // add this line to return a non-null value
    } catch (e) {
      return e.toString(); // add this line to return a non-null value
    }
  }

  Future<String> chatGPTAPI(String prompt) async {
    return 'CHATGPT';
  }

  Future<String> dalleAPI(String prompt) async {
    return 'DALL-E';
  }
}

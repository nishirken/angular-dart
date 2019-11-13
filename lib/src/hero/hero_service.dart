import 'hero.dart';
import 'package:angular_app/src/heroes_list/heroes_list_service.dart' show heroesUrl;
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

class HeroService {
  

  Future<Hero> update(Hero hero) async {
  try {
    final url = '$heroesUrl/${hero.id}';
    final response =
        await _http.put(url, headers: _headers, body: json.encode(hero));
    return Hero.fromJson(_extractData(response));
  } catch (e) {
    throw _handleError(e);
  }
}

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:angular_app/src/hero/hero.dart';

const _heroesUrl = 'api/heroes';

class HeroesListService {
  final Client _http;

  HeroesListService(this._http);

  Future<List<Hero>> getAll() async {
    try {
      final response = await _http.get(_heroesUrl);
      final heroes = (_extractData(response) as List)
          .map((json) => Hero.fromJson(json))
          .toList();
      return heroes;
    } catch (e) {
      throw _handleError(e);
    }
  }

  dynamic _extractData(Response resp) => json.decode(resp.body)['data'];

  Exception _handleError(dynamic e) {
    print(e); // for demo purposes only
    return Exception('Server error; cause: $e');
  }

  Future<Hero> get(int id) async {
    return (await getAll()).firstWhere((hero) => hero.id == id);
  }
}

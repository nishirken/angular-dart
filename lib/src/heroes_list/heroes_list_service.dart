import '../hero/heroes_fixture.dart';
import '../hero/hero.dart';

class HeroesListService {
  Future<List<Hero>> getAll() async => mockHeroes;

  Future<List<Hero>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), getAll);
  }
}

import 'src/hero/heroes_fixture.dart';
import 'src/hero/hero.dart';

class HeroesService {
  Future<List<Hero>> getAll() async => mockHeroes;

  Future<List<Hero>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), getAll);
  }
}

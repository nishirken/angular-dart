import 'package:angular/angular.dart';
import 'src/hero/hero.dart';
import 'src/hero/heroes_fixture.dart';
import 'src/hero/hero_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, HeroComponent],
)
class AppComponent {
  var title = 'Hello';
  Hero selectedHero;
  List<Hero> heroes = mockHeroes;

  void select(Hero hero) => selectedHero = hero;
}

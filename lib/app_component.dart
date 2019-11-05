import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, formDirectives],
)
class AppComponent {
  var title = 'Hello';
  Hero selectedHero;
  List<Hero> heroes = mockHeroes;

  void select(Hero hero) => selectedHero = hero;
}

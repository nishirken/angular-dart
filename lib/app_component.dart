import 'package:angular/angular.dart';
import 'src/hero/hero.dart';
import 'src/hero/hero_component.dart';
import 'heroes_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroesService)]
)
class AppComponent implements OnInit {
  var title = 'Hello';
  Hero selectedHero;
  List<Hero> heroes = [];

  final HeroesService _heroesService;

  AppComponent(this._heroesService);

  void select(Hero hero) => selectedHero = hero;

  @override
  Future<void> ngOnInit() async {
    heroes = await _heroesService.getAllSlowly();
  }
}

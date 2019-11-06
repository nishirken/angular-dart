import 'package:angular/angular.dart';
import 'package:angular_app/src/hero/hero_component.dart';
import 'package:angular_app/src/hero/hero.dart';
import 'heroes_list_service.dart';

@Component(
  selector: 'heroes-list',
  templateUrl: 'heroes_list_component.html',
  styleUrls: ['heroes_list_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroesListService)]
)
class HeroesListComponent implements OnInit {
  List<Hero> heroes;
  final HeroesListService _heroesListService; 
  Hero selectedHero;

  void select(Hero hero) => selectedHero = hero;

  HeroesListComponent(this._heroesListService);

  @override
  Future<void> ngOnInit() async {
    heroes = await _heroesListService.getAllSlowly();
  }
}

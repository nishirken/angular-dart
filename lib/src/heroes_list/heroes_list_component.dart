import 'package:angular/angular.dart';
import 'package:angular_app/src/hero/hero.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_app/src/routes.dart';
import 'heroes_list_service.dart';

@Component(
  selector: 'heroes-list',
  templateUrl: 'heroes_list_component.html',
  styleUrls: ['heroes_list_component.css'],
  directives: [coreDirectives, routerDirectives],
  providers: [ClassProvider(HeroesListService)],
  exports: [RoutePaths],
)
class HeroesListComponent implements OnInit {
  List<Hero> heroes;
  final HeroesListService _heroesListService; 
  Hero selectedHero;

  void select(Hero hero) => selectedHero = hero;

  HeroesListComponent(this._heroesListService);

  String heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {idParam: '$id'});

  @override
  Future<void> ngOnInit() async {
    heroes = await _heroesListService.getAll();
  }
}

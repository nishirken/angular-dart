import 'package:angular/angular.dart';
import 'package:angular_app/hero_service.dart';
import 'package:angular_app/src/hero/hero.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_app/src/routes.dart';

@Component(
  selector: 'heroes-list',
  templateUrl: 'heroes_list_component.html',
  styleUrls: ['heroes_list_component.css'],
  directives: [coreDirectives, routerDirectives],
  providers: [ClassProvider(HeroService)],
  exports: [RoutePaths],
)
class HeroesListComponent implements OnInit {
  List<Hero> heroes;
  final HeroService _heroService; 
  Hero selectedHero;

  void select(Hero hero) => selectedHero = hero;

  HeroesListComponent(this._heroService);

  String heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {idParam: '$id'});

  @override
  Future<void> ngOnInit() async {
    heroes = await _heroService.getAll();
  }
}

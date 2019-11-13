import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_app/src/hero/hero.dart';
import 'package:angular_app/src/heroes_list/heroes_list_service.dart';
import 'package:angular_app/src/routes.dart';

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  styleUrls: ['dashboard_component.css'],
  directives: [coreDirectives, routerDirectives],
  providers: [HeroesListService]
)
class DashboardComponent implements OnInit {
  List<Hero> heroes;

  final HeroesListService _heroesService;

  DashboardComponent(this._heroesService);

  String heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {idParam: '$id'});

  @override
  void ngOnInit() async {
    heroes = (await _heroesService.getAll()).skip(1).take(4).toList();
  }
}

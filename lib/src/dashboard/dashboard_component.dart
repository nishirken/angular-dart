import 'package:angular/angular.dart';
import 'package:angular_app/src/hero/hero.dart';
import 'package:angular_app/src/heroes_list/heroes_list_service.dart';

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  directives: [coreDirectives],
  providers: [HeroesListService]
)
class DashboardComponent implements OnInit {
  List<Hero> heroes;

  final HeroesListService _heroesService;

  DashboardComponent(this._heroesService);

  @override
  void ngOnInit() async {
    heroes = (await _heroesService.getAll()).skip(1).take(4).toList();
  }
}

import 'package:angular/angular.dart';
import 'package:angular_app/hero_service.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'hero.dart';
import 'package:angular_app/src/route_paths.dart';

@Component(
  selector: 'my-hero',
  templateUrl: 'hero_component.html',
  styleUrls: ['hero_component.css'],
  directives: [coreDirectives, formDirectives],
  providers: [HeroService]
)
class HeroComponent implements OnActivate {
  Hero hero;
  final HeroService _heroService;
  final Location _location;

  HeroComponent(this._heroService, this._location);

  int _getId(Map<String, String> parameters) {
    final id = parameters[idParam];
    return id == null ? null : int.tryParse(id);
  }

  void goBack() => _location.back();

  Future<void> save() async {
    await _heroService.update(hero);
    goBack();
  }

  @override
  void onActivate(_, RouterState current) async {
    final id = _getId(current.parameters);
    if (id != null) hero = await (_heroService.get(id));
  }
}

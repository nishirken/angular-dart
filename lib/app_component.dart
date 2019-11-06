import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'src/routes.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [routerDirectives],
  exports: [RoutePaths, Routes],
)
class AppComponent {
  final title = 'Tour of Heroes';
}

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

@Component(
  selector: 'my-app',
  templateUrl: './app_component.html',
  directives: [formDirectives],
)
class AppComponent {
  var title = 'Hello';

  Hero hero = Hero(1, 'Windstorm');
}

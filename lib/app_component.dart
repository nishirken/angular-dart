import 'package:angular/angular.dart';

@Component(
  selector: 'my-app',
  template: '<h1>{{name}}</h1>',
)
class AppComponent {
  var name = 'A';
}

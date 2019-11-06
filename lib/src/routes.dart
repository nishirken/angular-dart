import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'heroes_list/heroes_list_component.template.dart' as heroes_list_template;
import 'dashboard/dashboard_component.template.dart' as dashboard_template;

export 'route_paths.dart';

class Routes {
  static final heroes = RouteDefinition(
    routePath: RoutePaths.heroes,
    component: heroes_list_template.HeroesListComponentNgFactory,
  );

  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    heroes,
    dashboard,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.dashboard.toUrl(),
    ),
  ];
}

import 'package:flutter/cupertino.dart';
import 'package:micro_core/app/micro_core_utils.dart';

abstract class BaseApp {
  List<MicroApp> get microApps;

  Map<String, WidgetBuilderArgs> get baseRoutes;

  final Map<String, WidgetBuilderArgs> routes = {};

  void registerRouter() {
    if (baseRoutes?.isEmpty ?? false) routes.addAll(baseRoutes);
    if (microApps?.isNotEmpty ?? false) {
      for (MicroApp microapp in microApps) {
        routes.addAll(microapp.routes);
      }
    }
  }

  Route<dynamic> genereteRoute(RouteSettings settings) {
    var routerName = settings.name;
    var routerArgs = settings.arguments;
  }
}

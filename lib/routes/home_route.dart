part of 'routes.dart';

class HomeRoute {
  static const homeLeading = '/';
  static const homeScreen = homeLeading + 'homeScreen';
  static const userContactScreen = homeLeading + 'userContactScreen';
  static final homeRoutes = <String>{homeScreen, userContactScreen};

  static Widget getPage(String currentRoute, Object? args) {
    Widget child;
    switch (currentRoute) {
      case HomeRoute.homeScreen:
        // child = RouteArguments.misTypedArgsRoute<homeHomeArgs>(args);
        child = HomeScreen();
        break;
      case HomeRoute.userContactScreen:
        // child = RouteArguments.misTypedArgsRoute<homeHomeArgs>(args);
        child = UserContactScreen(
          args: args as UserContactScreenArgs,
        );
        break;
      default:
        child = PageNotFoundScreen();
    }
    return child;
  }
}

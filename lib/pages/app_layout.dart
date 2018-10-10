import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../generated/i18n.dart';
import '../config/theme.dart';
import '../config/routes/application.dart';
import '../config/routes/index.dart';

class AgentLayout extends StatefulWidget {
  @override
  _AgentLayoutState createState() => new _AgentLayoutState();
}

class _AgentLayoutState extends State<AgentLayout> {
  _AgentLayoutState() {
    final router = new Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: lightAgentAppTheme.data,
      title: 'Test App',
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: S.delegate.resolution(fallback: new Locale("en", "")),
      onGenerateRoute: Application.router.generator,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_structure/core/extensions/context_extension.dart';

import 'config/routes/page_name.dart';
import 'config/routes/route_manager.dart';
import 'config/themes/themes.dart';
import 'generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // init current context
    RouteManager.currentContext = context;

    return ScreenUtilInit(
      designSize: const Size(370, 700),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: Locale(context.locale),
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        themeMode: ThemeMode.light,
        navigatorKey: RouteManager.navigatorKey,
        initialRoute: PageName.splash,
        onGenerateRoute: RouteManager.onGenerateRoute,
      ),
    );
  }
}

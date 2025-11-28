import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/config/config_cubit/config_cubit.dart';
import 'core/config/routes/page_name.dart';
import 'core/config/routes/route_manager.dart';
import 'core/config/themes/color_manager.dart';
import 'core/utils/dependency_injection/di.dart';
import 'core/utils/size_manager.dart';
import 'i18n/strings.g.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ConfigCubit>(),
      child: Builder(
        builder: (context) {
          return ScreenUtilInit(
            designSize: const Size(370, 700),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (_, child) => BlocBuilder<ConfigCubit, ConfigState>(
              builder: (context, state) {
                return LayoutBuilder(
                  builder: (context, constraints) {
                    // update size manager
                    SizeManager.updateInfo(context);

                    return MaterialApp(
                      localizationsDelegates: const [
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      locale: TranslationProvider.of(context).flutterLocale,
                      supportedLocales: AppLocaleUtils.supportedLocales,
                      debugShowCheckedModeBanner: false,
                      theme: lightTheme,
                      darkTheme: darkTheme,
                      themeMode: ConfigCubit.themeMode,
                      navigatorKey: RouteManager.navigatorKey,
                      initialRoute: PageName.splash,
                      onGenerateRoute: RouteManager.onGenerateRoute,
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}

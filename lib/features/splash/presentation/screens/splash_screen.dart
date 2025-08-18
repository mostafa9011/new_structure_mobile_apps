import 'package:flutter/material.dart';

import '../../../../config/config_cubit/config_cubit.dart';
import '../../../../config/routes/route_manager.dart';
import '../../../../config/themes/app_theme.dart';
import '../../../../core/extensions/context_extension.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  // change language
                  ConfigCubit.of(context).toggleLanguage();
                },
                child: Text(
                  RouteManager.currentContext.tr.changeLanguage,
                  style: TextStyles.medium16W500(context).copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  // change theme
                  ConfigCubit.of(context).toggleTheme();
                },
                child: Text(
                  context.tr.changeTheme,
                  style: TextStyles.medium16W500(context).copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

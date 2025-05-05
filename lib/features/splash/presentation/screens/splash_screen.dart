import 'package:flutter/material.dart';
import 'package:new_structure/config/config_cubit/config_cubit.dart';
import 'package:new_structure/config/routes/route_manager.dart';
import 'package:new_structure/config/themes/text_style.dart';
import 'package:new_structure/core/extensions/context_extension.dart';

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
                  style: getSemiBoldStyle(
                    fontSize: 15,
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
                  style: getSemiBoldStyle(
                    fontSize: 15,
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

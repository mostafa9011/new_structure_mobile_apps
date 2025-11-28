import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/config/config_cubit/config_cubit.dart';
import '../../../../core/config/themes/app_theme.dart';
import '../../../../i18n/strings.g.dart';

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
                  context.read<ConfigCubit>().toggleLanguage();
                },
                child: Text(
                  t.changeLanguage,
                  style: TextStyles.medium16W500(context).copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  // change theme
                  context.read<ConfigCubit>().toggleTheme();
                },
                child: Text(
                  t.changeTheme,
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

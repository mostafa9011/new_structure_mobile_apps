import 'package:flutter/Material.dart';

class CustomTweenAnimatedBuilder extends StatelessWidget {
  final int index;
  final Widget? child;
  const CustomTweenAnimatedBuilder({
    super.key,
    required this.index,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero),
      duration: Duration(milliseconds: 100 * index),
      builder: (context, offset, child) {
        return FractionalTranslation(
          translation: offset,
          child: child,
        );
      },
      child: child,
    );
  }
}

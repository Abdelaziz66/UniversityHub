import 'package:flutter/material.dart';

class LFLow extends StatefulWidget {
  const LFLow({super.key});

  @override
  State<LFLow> createState() => _LFLowState();
}

class _LFLowState extends State<LFLow> with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastTapped = Icons.notifications;
  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.camera,
    Icons.chat,
    Icons.map,
    Icons.menu,
  ];

  void _updateMenu(IconData icon) {
    if (icon != Icons.menu) {
      setState(() => lastTapped = icon);
    }
  }

  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  Widget flowMenuItem(IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: RawMaterialButton(
        fillColor: lastTapped == icon
            ? Theme.of(context).primaryColor
            : Theme.of(context).colorScheme.secondary,
        splashColor: Theme.of(context).colorScheme.primary,
        shape: const CircleBorder(),
        constraints: BoxConstraints.tight(const Size(64, 64)),
        onPressed: () {
          _updateMenu(icon);
          menuAnimation.status == AnimationStatus.completed
              ? menuAnimation.reverse()
              : menuAnimation.forward();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 32.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flow(
        delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
        children: menuItems
            .map<Widget>((IconData icon) => flowMenuItem(icon))
            .toList(),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);
  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dy = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dy = context.getChildSize(i)!.height * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dy * menuAnimation.value,
          0.0, // No translation along the Y-axis
          0.0, // No translation along the Z-axis
        ),
      );
    }
  }
}

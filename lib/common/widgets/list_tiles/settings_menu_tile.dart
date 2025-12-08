import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';

class TSettingsMenuTile extends StatelessWidget {
  const TSettingsMenuTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap,
    this.icon,
    this.iconColor = TColors.buttonPrimary,
  });

  final String title, subtitle;
  final Widget? trailing;
  final void Function()? onTap;
  final IconData? icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor,
      ),
      title: Text(title, style: Theme.of(context).textTheme.headlineSmall),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}

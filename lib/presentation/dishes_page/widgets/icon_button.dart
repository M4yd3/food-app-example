import 'package:flutter/cupertino.dart';

class IconButton extends StatelessWidget {
  const IconButton({required this.icon, this.onPressed});

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      color: CupertinoColors.white,
      onPressed: onPressed ?? () {},
      child: Icon(
        icon,
        color: CupertinoColors.black,
      ),
    );
  }
}

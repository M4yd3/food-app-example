import 'package:flutter/cupertino.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar();

  @override
  Widget build(BuildContext context) {
    return const ClipOval(
      child: Image(
        image: AssetImage('assets/images/user.jpg'),
        height: 44,
      ),
    );
  }
}

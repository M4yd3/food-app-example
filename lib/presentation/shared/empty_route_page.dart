import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

@RoutePage(name: 'EmptyRoute')
class EmptyRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      AutoRouter(builder: (context, content) => content);
}

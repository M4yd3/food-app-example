import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../config/injection.dart';
import '../../config/router.dart';
import '../cart_tab/cubit/cart_cubit.dart';
import '../shared/styles.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );

    return BlocProvider(
      create: (context) => getIt<CartCubit>(),
      child: CupertinoApp.router(
        title: 'Test task',
        routerConfig: getIt<AppRouter>().config(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: const CupertinoThemeData(
          primaryColor: Styles.colorPrimary,
        ),
      ),
    );
  }
}

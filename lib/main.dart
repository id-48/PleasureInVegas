
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pleasure_in_vegas/di/locator.dart';
import 'package:pleasure_in_vegas/provider/app_state_provider.dart';
import 'package:pleasure_in_vegas/theme/app_theme.dart';
import 'package:pleasure_in_vegas/utils/constants/navigation_route_constants.dart';
import 'package:pleasure_in_vegas/utils/custom_scroll_behavior.dart';
import 'package:pleasure_in_vegas/utils/navigation_utils.dart';
import 'package:pleasure_in_vegas/utils/preference_utils.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  setupLocator();
  await init();

  await init();
  if (kIsWeb) {
    const int megabyte = 1000000;
    SystemChannels.skia
        .invokeMethod('Skia.setResourceCacheMaxBytes', 512 * megabyte);
    await Future<void>.delayed(Duration.zero);
  }
  runApp(
    ProviderScope(
      observers: [Logger()],
      child: MultiProvider(
        providers: [
          ListenableProvider(create: (_) => AppStateProvider()),
        ],
        child: const App(),
      ),
    ),
  );
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
      ProviderBase provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container,
      ) {
    debugPrint(
        '[${provider.name ?? provider.runtimeType}] previousValue: $previousValue value: $newValue');
  }
}

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    final appTheme = ref.watch(appThemeProvider);
    return Material(
      child:
      LayoutBuilder(
          builder: (layoutContext, BoxConstraints constraints) {
        return OrientationBuilder(
            builder: (context, Orientation orientation) {
          return ScreenUtilInit(
              useInheritedMediaQuery: true,
              designSize: const Size(360, 800),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (context , child) {
                return MaterialApp(
                  scrollBehavior: MyCustomScrollBehavior(),
                  theme: appTheme.data,
                  darkTheme: AppTheme.dark().data,
                  themeMode: appTheme.mode,
                  debugShowCheckedModeBanner: false,
                  navigatorKey: locator<NavigationUtils>().globalStateKey,
                  onGenerateRoute: locator<NavigationUtils>().generateRoute,
                  initialRoute: routeSplash,
                );
              }
          );
        });
      }),
    );
  }
}

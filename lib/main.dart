import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/desktop_screen.dart';
import 'services/win_system.dart';
import 'theme/win_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const Windows11LauncherApp());
}

class Windows11LauncherApp extends StatelessWidget {
  const Windows11LauncherApp({super.key});

  @override
  Widget build(BuildContext context) {
    final system = WinSystemState();

    return ListenableBuilder(
      listenable: system,
      builder: (context, _) {
        return MaterialApp(
          title: 'Windows 11 Launcher',
          debugShowCheckedModeBanner: false,
          theme: system.isDarkMode ? WinTheme.darkTheme() : WinTheme.lightTheme(),
          home: const WinDesktopScreen(),
        );
      },
    );
  }
}

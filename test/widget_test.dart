import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:windows_11_launcher/main.dart';
import 'package:windows_11_launcher/services/win_system.dart';

void main() {
  testWidgets('Windows 11 Launcher smoke test', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1280, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(const Windows11LauncherApp());
    await tester.pumpAndSettle();

    // Verify desktop shortcuts
    expect(find.text('Recycle Bin'), findsOneWidget);
    expect(find.text('This PC'), findsAtLeastNWidgets(1));
    expect(find.text('Projects'), findsAtLeastNWidgets(1));

    // Verify File Explorer window
    expect(find.text('Local Disk (C:) Free Space: 742 GB of 1 TB'), findsOneWidget);

    // Test Start Menu toggle
    final system = WinSystemState();
    system.toggleStartMenu();
    await tester.pumpAndSettle();

    expect(find.text('Pinned'), findsOneWidget);
    expect(find.text('Recommended'), findsOneWidget);
    expect(find.text('Ayyappa Pravin'), findsOneWidget);

    // Close overlays
    system.closeOverlays();
    await tester.pumpAndSettle();
    expect(find.text('Pinned'), findsNothing);

    // Test Action Center toggle
    system.toggleActionCenter();
    await tester.pumpAndSettle();

    expect(find.text('Wi-Fi'), findsOneWidget);
    expect(find.text('Bluetooth'), findsOneWidget);
    expect(find.text('Night light'), findsOneWidget);

    system.closeOverlays();
    await tester.pumpAndSettle();
    expect(find.text('Night light'), findsNothing);
  });
}

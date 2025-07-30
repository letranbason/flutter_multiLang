import 'package:flutter/material.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  void _toggleLanguage() {
    setState(() {
      _locale = _locale.languageCode == 'en' ? const Locale('vi') : const Locale('en');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: MyHomePage(onToggleLanguage: _toggleLanguage),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final VoidCallback onToggleLanguage;

  const MyHomePage({super.key, required this.onToggleLanguage});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _messageCount = 0;

  void _incrementMessage() {
    setState(() {
      _messageCount++;
    });
  }

  void _resetMessage() {
    setState(() {
      _messageCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context)!.languageToggle),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: widget.onToggleLanguage,
              child: Text(AppLocalizations.of(context)!.languageToggle),
            ),
            const SizedBox(height: 30),
            Text(
              AppLocalizations.of(context)!.messageCount(_messageCount),
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _incrementMessage,
              child: const Text("Add Message"),
            ),
            ElevatedButton(
              onPressed: _resetMessage,
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}

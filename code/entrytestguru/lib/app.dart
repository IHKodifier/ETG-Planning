import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EntryTestGuruApp extends ConsumerWidget {
  const EntryTestGuruApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'EntryTestGuru',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('EntryTestGuru - Coming Soon'),
        ),
      ),
    );
  }
}
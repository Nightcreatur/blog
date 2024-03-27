import 'package:blog/core/secrets/app_secreres.dart';
import 'package:blog/core/theme/theme.dart';
import 'package:blog/features/auth/presentation/pages/login_page.dart';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = await Supabase.initialize(
    url: AppSecretes.supabaseUrl,
    anonKey: AppSecretes.supabaseApiKey,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.darkTheme,
        home: const LoginPage());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'src/constants/constants.dart';
import "./app.dart";

Future<void> main() async {
  // Load the Env file
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(
      fileName: "../.env"); // Load the .env file from the root directory

  await Supabase.initialize(
      url: SupabaseConstants.supabaseUrl,
      anonKey: SupabaseConstants.supabaseAnonKey);

  // Run the app
  runApp(PetBuddyApp());
}

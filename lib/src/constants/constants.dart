import 'package:flutter_dotenv/flutter_dotenv.dart';

/* 
  A class that contains the Supabase URL and the Supabase anonymous key.
  The values are retrieved from the .env file.
 */
class SupabaseConstants {
  static final String supabaseUrl = dotenv.env['SUPABASE_URL'] ?? '';
  static final String supabaseAnonKey = dotenv.env['SUPABASE_ANON_KEY'] ?? '';
}

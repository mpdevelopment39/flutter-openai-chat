import 'package:flutter_dotenv/flutter_dotenv.dart';

//* Routes
const String homeRoute = 'home';
const String detailRoute = 'detail';

//* Assets
const String assetsImages = 'assets/images';
const String assetsAnimations = 'assets/animations';
const String assetsFonts = 'assets/fonts';

//* Environment vars
final String openAIApiKey = dotenv.env['OPENAI_API_KEY'] ?? '';


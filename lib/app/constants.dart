import 'package:flutter_dotenv/flutter_dotenv.dart';

//* Assets
const String assetsImages = 'assets/images';
const String assetsAnimations = 'assets/anims';
const String assetsFonts = 'assets/fonts';

//* Environment vars
final String openAIApiKey = dotenv.env['OPENAI_API_KEY'] ?? '';


//* Api constants
final List<double> temperatures = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1];
final List<String> models = ['gpt-3.5-turbo','gpt-3.5-turbo-0125','gpt-3.5-turbo-1106'];
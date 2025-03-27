
class FontManager {
  static Map<String, String> fontsByLanguage = {
    'en': 'Poppins',    
    'ar': 'ElMessiri',      
  };

  static String getFontFamily(String languageCode) {
    return fontsByLanguage[languageCode] ?? 'Poppins'; 
  }
}
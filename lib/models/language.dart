class Language {
  final int id;
  final String name;
  final String flag;
  final String languageCode;

  Language({
    required this.id,
    required this.name,
    required this.languageCode,
    required this.flag,
  });
  static List<Language> languageList() {
    return <Language>[
      Language(id: 1, name: 'English', languageCode: 'en',flag: '🇺🇸'),
      Language(id: 2, name: 'Arabic', languageCode: 'ar',flag:'🇮🇶' ),
    ];
  }
}

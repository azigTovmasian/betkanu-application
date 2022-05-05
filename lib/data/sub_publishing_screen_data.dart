import 'package:kanu/Model/sub_publishing_model.dart';
import 'package:kanu/Widgets/sub_publishing_images_listview_widget.dart';

class SubPublishingScreenData {
  static List subImagesURL0 = [
    'https://betkanu.com/content/img/products/Publishing/SheshltoDOrhoy2.jpg',
    'https://betkanu.com/content/img/products/Publishing/SheshltoDOrhoy3.png',
    'https://betkanu.com/content/img/products/Publishing/SheshltoDOrhoy1.png',
  ];
  static List subImagesURL1 = [
    'https://betkanu.com/content/img/products/Publishing/Pen&Paper3.png',
    'https://betkanu.com/content/img/products/Publishing/Pen&Paper7.png',
    'https://betkanu.com/content/img/products/Publishing/Pen&Paper1.png',
    'https://betkanu.com/content/img/products/Publishing/Pen&Paper2.png',
    'https://betkanu.com/content/img/products/Publishing/Pen&Paper5.png',
    'https://betkanu.com/content/img/products/Publishing/Pen&Paper6.png',
  ];
  static List subImagesURL2 = [
    'https://betkanu.com/content/img/products/Publishing/KidsSongs3.png',
    'https://betkanu.com/content/img/products/Publishing/KidsSongs1.png',
    'https://betkanu.com/content/img/products/Publishing/KidsSongs2.png',
  ];
  static List subImagesURL3 = [
    'https://betkanu.com/content/img/products/Publishing/coloing1.png',
    'https://betkanu.com/content/img/products/Publishing/coloing2.png',
    'https://betkanu.com/content/img/products/Publishing/coloing3.png',
    'https://betkanu.com/content/img/products/Publishing/coloing4.png',
    'https://betkanu.com/content/img/products/Publishing/coloing5.png'
  ];
  static List subImagesURL4 = [
    'https://betkanu.com/content/img/products/Publishing/convo3.png',
    'https://betkanu.com/content/img/products/Publishing/convo2.png',
    'https://betkanu.com/content/img/products/Publishing/convo1.png',
  ];
  static List<SubPublishingModel> subPublishingData(
      {required double height, required double width}) {
    List<SubPublishingModel> pItem = [
      SubPublishingModel(
        pDescription:
            'It is a series of educational curriculum books that will be taught in schools, and this is the second book in which the child will learn in addition to letters and movements and will be able to read words with the way they are written.',
        pFeatures: 'Features:\n' +
            'A series of 7 books.\n' +
            'It begins by teaching the basics of the Syriac language and its rules.\n' +
            'The books contain illustrations, drawings, games, and puzzles, coloring figures and reading exercises\n' +
            'QR Codes for video, audio, texts and images.\n' +
            'Uses the BET KANU READER APP',
        pCredits: 'Credits:\n' +
            'DESIGNERS: MERAY YOUSSEF, ORNINA SHABO, GABI MALKI, MILAD YOUSSEF, AMMAR YOUSSEF, MERAY YOUSSEF\n' +
            'PROJECT MANAGER: DILAMA MALKI\n' +
            'RECORDING: GEORGE AFRAM\n' +
            'VOICE OVER: ELIANA SHABO\n' +
            'QUALITY INSURANCE: AKKAD SAADI\n' +
            'PRODUCT LEAD: SAMIR SHAMOUN',
        pSubImages: SubPublishingImagesListViewWidget(
            subImagesCount: subImagesURL0.length,
            subImagesURL: subImagesURL0,
            containerHeight: height * 1 / 4,
            imageWidth: width * 3 / 8,
            imageHeight: height * 3 / 16),
      ),
      SubPublishingModel(
        pDescription:
            'This is the first full curriculum in Surayt, the Syriac Language of Tur-abdin. In this series, the child learns the letters and how to read and hear Syriac and speak on different topics. He or she also learns to read a sentence, a word, or a text, and the child builds a sentence and can read the word with the vowels.',
        pFeatures: 'Features:\n' +
            'A series of two educational books, starting with teaching letters, and in the second book, publishes stories and teaches through them.\n' +
            'The first book contains drawings for coloring and games, and the second book contains stories with colorful drawings.\n' +
            'QR Codes for Audio, Texts and images.\n' +
            'Uses the BET KANU READER App\n',
        pCredits: 'Credits:\n' +
            'AUTHOR: BOUTROS SHABO\n' +
            'IN COLLABORATION WITH: ASSYRISKA/SYRISKA, LARARFORBUNDET I SVERIGE\n' +
            'PROJECT MANAGER: DILAMA MALKI\n' +
            'ILLUSTRATORS: GABRIELL YOUSSEF\n' +
            'LAYOUT AND COVER DESIGN: MERAY YOUSSEF\n' +
            'LANGUAGE REVIEW: D. ABDUL MASSIH SAADI\n' +
            'TYPIST: BOUTROS SHABO\n' +
            'LAYOUT DESIGN SUPERVISION: SAMIR SHAMOUN\n' +
            'PRODUCT LEAD: AKKAD SAADI\n',
        pSubImages: SubPublishingImagesListViewWidget(
            subImagesCount: subImagesURL1.length,
            subImagesURL: subImagesURL1,
            containerHeight: height * 1 / 4,
            imageWidth: width * 3 / 8,
            imageHeight: height * 3 / 16),
      ),
      SubPublishingModel(
        pDescription:
            'A children\'s book that contains many songs and stories in addition to poetry. The content is displayed via text and graphics that express the content. The book is in Syriac and Swedish. The texts were written and collected by Nursel Awrohum',
        pFeatures: 'Features:\n' +
            'More than a hundred songs recorded to teach children the Syriac language.\n' +
            'QR Codes for Audio, Texts and images.\n' +
            'Uses the BET KANU READER App',
        pCredits: 'Credits:\n' +
            'CHARACTER CONCEPT DESIGNER: ORNINA SHABO\n' +
            'LAYOUT DESIGNER: MERAY YOUSSEF\n' +
            'PROJECT MANAGER: DILAMA MALKI\n' +
            'ILLUSTRATORS: ORNINA SHABO,GABI MALKI,MILAD YOUSSEF,MERAY YOUSSEF\n' +
            'VOICE OVERS: NOHADRA HANNA,DILAMA MALKI\n' +
            'SYRIAC ORTHOGRAPHY EDITOR: BOUTROS SHABO\n' +
            'SYRIAC ORTHOGRAPHY SUPERVISION: D. ABDUL MASSIH SAADI\n' +
            'RECORDING: GEORGE AFRAM\n' +
            'SUPERVISION: AKKAD SAADI\n' +
            'PRODUCT LEAD: SAMIR SHAMOUN',
        pSubImages: SubPublishingImagesListViewWidget(
            subImagesCount: subImagesURL2.length,
            subImagesURL: subImagesURL2,
            containerHeight: height * 1 / 4,
            imageWidth: width * 3 / 8,
            imageHeight: height * 3 / 16),
      ),
      SubPublishingModel(
        pDescription:
            'It is a series of educational curriculum books that will be taught in schools, and this is the second book in which the child will learn in addition to letters and movements and will be able to read words with the way they are written.',
        pFeatures: 'Features:\n' +
            'A series of 7 books.\n' +
            'It begins by teaching the basics of the Syriac language and its rules.\n' +
            'The books contain illustrations, drawings, games, and puzzles, coloring figures and reading exercises\n' +
            'QR Codes for video, audio, texts and images.\n' +
            'Uses the BET KANU READER APP',
        pCredits: 'Credits:\n' +
            'DESIGNERS: MERAY YOUSSEF, ORNINA SHABO, GABI MALKI, MILAD YOUSSEF, AMMAR YOUSSEF, MERAY YOUSSEF\n' +
            'PROJECT MANAGER: DILAMA MALKI\n' +
            'RECORDING: GEORGE AFRAM\n' +
            'VOICE OVER: ELIANA SHABO\n' +
            'QUALITY INSURANCE: AKKAD SAADI\n' +
            'PRODUCT LEAD: SAMIR SHAMOUN',
        pSubImages: SubPublishingImagesListViewWidget(
            subImagesCount: subImagesURL3.length,
            subImagesURL: subImagesURL3,
            containerHeight: height * 1 / 4,
            imageWidth: width * 3 / 8,
            imageHeight: height * 3 / 16),
      ),
      SubPublishingModel(
        pDescription:
            '"Simple entry-level conversation booklet for non-speakers of Surit and Surayt to be distributed for free in our local and global events. It targets all age groups, but it was specifically designed for 10+. It is accompanied with the BET KANU READER App, which is a tool to help read the book to the user. "',
        pFeatures: 'Features:\n' +
            '6 Conversation lessons.\n' +
            'It is provided with English and Arabic Translations to the Syriac text\n' +
            'QR Codes for playing an audio, displaying the proper text, and showing the matching image.\n' +
            'Uses the BET KANU READER App',
        pCredits: 'Credits:\n' +
            'SYRIAC ORTHOGRAPHY EDITOR: DR. ABDUL MASSIH SAADI\n' +
            'GRAPHIC DESIGNER: MERAY YOUSSEF\n' +
            'PROJECT MANAGER: DILAMA MALKI\n' +
            'BOOK EDITOR: AKKAD SAADI\n' +
            'SUPERVISION: RAMINA SAMUEL\n' +
            'PHOTOGRAPHER: HAROUT PASHAIAN\n' +
            'RECORDING: GEORGE AFRAM\n' +
            'ACTORS: DILAMA MALKI, RENIO SHUKRO, MERAY YOUSSEF, FARAJ FARJO\n' +
            'CHARACTER VOICES: DILAMA MALKI, RENIO SHUKRO, JEWEL FARJO, FARAJ FARJO\n',
        pSubImages: SubPublishingImagesListViewWidget(
            subImagesCount: subImagesURL4.length,
            subImagesURL: subImagesURL4,
            containerHeight: height * 1 / 4,
            imageWidth: width * 3 / 8,
            imageHeight: height * 3 / 16),
      ),
    ];
    return pItem;
  }
}

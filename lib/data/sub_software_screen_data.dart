import 'package:kanu/Model/sub_publishing_model.dart';
import 'package:kanu/Widgets/sub_publishing_images_listview_widget.dart';

class SubSoftwareScreenData {
  static List subImagesURL0 = [
    'https://betkanu.com/content/img/products/materials/reader1.jpg',
    'https://betkanu.com/content/img/products/materials/reader2.jpg',
    'https://betkanu.com/content/img/products/materials/reader3.jpg',
  ];
  static List subImagesURL1 = [
    'https://betkanu.com/content/img/products/materials/kanu1.jpg',
    'https://betkanu.com/content/img/products/materials/kanu2.jpg',
    'https://betkanu.com/content/img/products/materials/kanu3.jpg',
  ];
  static List subImagesURL2 = [
    'https://betkanu.com/content/img/products/materials/kifo.jpg',
  ];
 
  static List<SubPublishingModel> subSoftwareData(
      {required double height, required double width}) {
    List<SubPublishingModel> sItem = [
      SubPublishingModel(
        pDescription:'BET KANU presents BET KANU READER App, a great Syriac reading App for everyone.',
        pFeatures: '  FUN FOR KIDS\n' +
            '  GREAT FOR TEACHERS\n' +
            '  AMAZING FOR PARENTS',
        pCredits: 'This must-have App is designed for all BET KANU publications and prints. The App includes these useful features:\n' +
            'Scan QR Codes provided in all BET KANU publications and prints.\n' +
            'Plays an Audio for each QR Code that represents a page, a paragraph, or even a single line.\n' +
            'Shows an image associated with each QR Code.\n' +
            'Displays the Syriac text in either Eastern or Western font types.',
        pSubImages: SubPublishingImagesListViewWidget(
            subImagesCount: subImagesURL0.length,
            subImagesURL: subImagesURL0,
            containerHeight: height * 1 / 4,
            imageWidth: width * 3 / 8,
            imageHeight: height * 3 / 16),
      ),
      SubPublishingModel(
        pDescription:'Test your Syriac skills with this interactive game! Complete all the levels to unlock the last one. KANU GUESS is our first video game challenging you to learn new words. Available on Android and iOS. Look out for new levels and updates.',
        pFeatures: 'BET KANU presents its own version of the classical trivia game 4 pictures 1 word.:\n' +
            'The game will challenge your Syriac skills in an entertaining way.\n' +
            'If you love guessing, then you will love KANU GUESS.\n' +
            'Can you guess the word in Syriac?\n' +
            'The game has multiple Syriac language skill levels. It starts with 1 picture 1 word, and then ends with 4 pictures 1 word.\n',
        pCredits: 
            'The picture(s) will show, and you will get a list of random letters to pick the right combination of letters to construct the word that is depicted in the picture(s). :) You can use either the Eastern Syriac font (East Marcus) or the Western Syriac font (Serto Urhoy).\n',
        pSubImages: SubPublishingImagesListViewWidget(
            subImagesCount: subImagesURL1.length,
            subImagesURL: subImagesURL1,
            containerHeight: height * 1 / 4,
            imageWidth: width * 3 / 8,
            imageHeight: height * 3 / 16),
      ),
      SubPublishingModel(
        pDescription:'"You are the Rock - مين غيرك الصخرة"',
        pFeatures: 'Radio Kifo is a new project by the Suryoyo Patriarchal Youth Department (SPYD) targetting Christian Youth in general and Suryoyo youth in particular.', 
        pCredits: 'Broadcast the Good News of Jesus Christ so that it reaches every single person of our youth, and teach, encourage, and unify the body of Christ.\n' +
            'Broadcast quality Christian programming as a support to our ministry.\n' +
            'Develop programming in the heart language of people that clearly presents truth in a compassionate and consistent way.\n' +
            'Automatic download of new categories!',
        pSubImages: SubPublishingImagesListViewWidget(
            subImagesCount: subImagesURL2.length,
            subImagesURL: subImagesURL2,
            containerHeight: height * 1 / 4,
            imageWidth: width * 3 / 8,
            imageHeight: height * 3 / 16),
      ),
    ];
    return sItem;
  }
}

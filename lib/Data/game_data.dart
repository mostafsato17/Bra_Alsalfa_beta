import 'package:flutter/material.dart';
import 'package:test_3/Core/Models/gamecategory.dart';

List<GameCategory> gameData = [
  GameCategory(
    id: 'food',
    game: 'طعام', 
    words: [
      'بيتزا', 'برجر', 'كباب', 'معكرونة', 'شوربة', 'سلطة', 'أرز', 'سمك', 
      //  'شاورما', 'بطاطس', 'دجاج', 'حلوى', 'فاكهة', 'عصير', 'لبن', 'بيض', 'جبن', 'خبز', 'لحم', 'كعك'
    ],
    icon: Icons.fastfood,
    iconColor: Colors.white,
  ),
  GameCategory(
    id: 'clothes',
    game: 'ملابس',
    words: [
      'قميص', 'بنطال', 'حذاء', 'معطف', 'قبعة', 'جوارب', 'جاكيت', 'تنورة',
      // 'بدلة', 'وشاح', 'حزام', 'نظارات', 'حقيبة', 'روب', 'فستان', 'تيشيرت', 'جينز', 'قفازات', 'ساعة', 'كمامة'
    ],
    icon: Icons.shopping_bag,
    iconColor: Colors.white,
  ),
  GameCategory(
    id: 'places',
    game: 'أماكن',
    words: [
      'مدرسة', 'مستشفى', 'مطار', 'سوق', 'حديقة', 'مطعم', 'ملعب', 'متحف',
      //  'شاطئ', 'مكتبة', 'محطة', 'مسجد', 'كنيسة', 'فندق', 'جامعة', 'سينما', 'مخبز', 'برج', 'غابة', 'جسر'
    ],
    icon: Icons.location_on,
    iconColor: Colors.white,
  ),
  GameCategory(
    id: 'sports',
    game: 'رياضة',
    words: [
      'كرة القدم',
      'كرة السلة',
      'تنس',
      'جري',
      'سباحة',
      'كاراتيه',
      'ملاكمة',
      'ركوب الخيل',
      // 'رفع الأثقال',
      // 'جولف',
      // 'تزلج',
      // 'دراجات',
      // 'رماية',
      // 'باركور',
      // 'هوكي',
      // 'كرة الطائرة',
      // 'جمباز',
      // 'سباق سيارات',
      // 'مصارعة',
      // 'يوغا'
    ],
    icon: Icons.sports_soccer,
    iconColor: Colors.white,
  ),
  GameCategory(
    id: 'cartoon',
    game: 'الكرتون',
    words: [
      'توم وجيري',
      'سبونج بوب',
      'ناروتو',
      'دراغون بول',
      'كونان',
      'ميكي ماوس',
      'بن تن',
      'دورا',
      // 'ون بيس',
      // 'كابتن ماجد',
      // 'بوكيمون',
      // 'السنافر',
      // 'هايدي',
      // 'غامبول',
      // 'هجوم العمالقة',
      // 'ريمي',
      // 'مغامرات سندباد',
      // 'أبطال الديجيتال',
      // 'سلام دانك',
      // 'فتيات القوة'
    ],
    icon: Icons.tv,
    iconColor: Colors.white,
  ),
  GameCategory(
    id: 'animals',
    game: 'حيوانات',
    words: ['أسد', 'نمر', 'فيل', 'زرافة', 'كلب', 'قط', 'أرنب', 'ثعلب', 
    //'ذئب', 'دب', 'حصان', 'ببغاء', 'سمكة', 'تمساح', 'خفاش', 'نسر', 'سلحفاة', 'دولفين', 'غزال', 'حمار'
    ],
    icon: Icons.pets,
    iconColor: Colors.white,
  ),
  GameCategory(
    id: 'tools',
    game: 'أدوات',
    words: ['مطرقة', 'مفك', 'مسمار', 'متر', 'كماشة', 'مبرد', 'مفتاح', 'منشار', 
    //'مسدس سيليكون', 'مقص', 'فرشاة', 'حبل', 'مشبك', 'بلاور', 'غراء', 'كابل', 'عدسة', 'ميزان', 'صنارة', 'صندوق أدوات'
    ],
    icon: Icons.build,
    iconColor: Colors.white,
  ),
  GameCategory(
    id: 'celebrities',
    game: 'مشاهير',
    words: [
      'ليونيل ميسي',
      'كريستيانو رونالدو',
      'محمد صلاح',
      'أديل',
      'توم كروز',
      'براد بيت',
      'إلون ماسك',
      'ستيف جوبز',
      // 'مارك زوكربيرغ',
      // 'بيل غيتس',
      // 'شاكيرا',
      // 'بيونسيه',
      // 'كيم كارداشيان',
      // 'دواين جونسون',
      // 'روبرت داوني جونيور',
      // 'ويل سميث',
      // 'أوبرا وينفري',
      // 'تايلور سويفت',
      // 'دراك',
      // 'أحمد حلمي'
    ],
    icon: Icons.star,
    iconColor: Colors.white,
  ),
  GameCategory(
    id: 'technology',
    game: 'تقنية',
    words: [
      'كمبيوتر',
      'هاتف',
      'روبوت',
      'ذكاء اصطناعي',
      'إنترنت',
      'برمجة',
      'واقع افتراضي',
      'معالج',
      // 'بطارية',
      // 'لوحة مفاتيح',
      // 'ذاكرة عشوائية',
      // 'كاميرا',
      // 'ماوس',
      // 'شاشة',
      // 'سماعات',
      // 'مايكروفون',
      // 'واي فاي',
      // 'هارد ديسك',
      // 'درون',
      // 'بلوتوث'
    ],
    icon: Icons.devices,
    iconColor: Colors.white,
  ),
  GameCategory(
    id: 'music',
    game: 'موسيقى',
    words: ['بيانو', 'جيتار', 'طبلة', 'كمان', 'ساكسفون', 'مايكروفون', 'أغنية', 'فرقة', 
    //'كورس', 'إيقاع', 'نوتة موسيقية', 'إلكترو', 'روك', 'بوب', 'راب', 'جاز', 'دي جي', 'أوركسترا', 'عازف', 'ألبوم'
    ],
    icon: Icons.music_note,
    iconColor: Colors.white,
  ),
];

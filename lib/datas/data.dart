
import 'package:tourism/datas/Item.dart';

var defaultChoiceChip = 0;

List<String> choices = ['همدان','شیراز','مازندران','بیرجند','ایلام'];

List categories = [
{"name": "ایلام",},
{"name": "مازندران",},
{"name": "بیرجند",},
{"name": "شیراز",},
{"name": "شیراز",},
{"name": "زاهدان",},
{"name": "رستوران",},
{"name": "تاریخی",},
];



List<String> albumImages = [
  "https://www.parsethylene-kish.com/eco/images/Eco-Gallery/Damavand-Mountain/Damavand-2.jpg",
  "https://fa.tripyar.com/uploads/picture/337/eram-garden-6.jpg",
  "https://fa.tripyar.com/uploads/picture/2357/haft-abshar-3.jpg",

];

List popular = [
  {
    "id": 103,
    "name": "باغ ارم",
    "image":
    "https://fa.tripyar.com/uploads/picture/337/eram-garden-6.jpg",
    "type": categories[3]["name"],
    "latitude": 29.709814,
    "longitude": 52.544911,
    "isFavorite": true,
    "album": albumImages,
    "description":
    "در شمال غربی شهر شیراز ودرکنار شهر باغ زیبای تاریخی باقی مانده که به باغ ارم معروف است. باغ ارم  باغ ایرانی تاریخی منحصربفرد است که درسی وپنجمین اجلاس کمیته میراث جهانی یونسکو درسال 2011 در فهرست میراث جهانی ثبت گردید و شامل چند بنای تاریخی هنری نفیس و باغ گیاه شناسی می‌ شود.",
  },
  {
    "id": 100,
    "name": "آبشار های هفتگانه دهلران",
    "image":
    "https://fa.tripyar.com/uploads/picture/2357/haft-abshar-3.jpg",
    "type": categories[0]["name"],
    "rate": "4.5",
    "latitude": 32.719917,
    "longitude": 47.297320,
    "isFavorite": false,
    "album": albumImages,
    "description":
    "آبشارهای هفت گانه خربزان واقع در بخش زرین آباد از توابع شهرستان دهلران یکی از شاهکارهای طبیعی در دل کوه های ایلام است. استان ایلام که در میان کوههای زاگرس قرار دارد، دارای طبیعتی زیبا و آبشارهای دیدنی است.",
  },
  {
    "id": 101,
    "name": "کوه دماوند",
    "image":
    "https://www.parsethylene-kish.com/eco/images/Eco-Gallery/Damavand-Mountain/Damavand-2.jpg",
    "type": categories[1]["name"],
    "rate": "4.5",
    "latitude": 35.951918,
    "longitude": 52.127817,
    "isFavorite": true,
    "album": albumImages,
    "description":
    "کوه دَماوَند کوهی در شمال ایران است که به عنوان بلندترین کوه این کشور و بلندترین آتشفشان خاورمیانه شناخته می‌شود. دماوند در پاره مرکزی رشته‌کوه البرز در جنوب دریای خزر و در بخش لاریجان شهرستان آمل جای دارد.",
  },
  {
    "id": 102,
    "name": "بند دره",
    "image":
    "https://fa.tripyar.com/uploads/picture/2749/bande-dare-8.jpg",
    "type": categories[2]["name"],
    "rate": "4.5",
    "latitude": 32.819203,
    "longitude": 59.216421,
    "isFavorite": false,
    "album": albumImages,
    "description":
    "بند دره بزرگترین بند کوهستانی بیرجند و از زیباترین تفرجگاههای این شهر است. بند دره مهمترین بند تاریخی بیرجند محسوب می ‌شود که در نزدیکی بیرجند بر روی یکی از دره های کوهستان باقران بسته شده است. قدمت این سد به اواخر دوره‌ زندیه و اوایل دوره‌ قاجار برمی گردد.",
  },
  {
    "id": 104,
    "name": "باغ و عمارت رحیم آباد",
    "image":
    "https://fa.tripyar.com/uploads/picture/1566/birjand-rahimabad.jpg",
    "type": categories[2]["name"],
    "rate": "4.5",
    "latitude": 32.850383,
    "longitude": 59.219770,
    "isFavorite": false,
    "album": albumImages,
    "description":
    "مجموعه باغ و عمارت رحیم‌آباد در شهر بیرجند از جمله باغ‌های زیبای ایرانی است و در روستایی با همین نام واقع شده است. باغ رحیم‌آباد دارای دو درب ورودی است که فضای دسترسی به داخل از همین دو درب میسر می‌باشد.",
  },
  {
    "id": 105,
    "name": "قبرستان هفتاد ملا",
    "image": "https://fa.tripyar.com/uploads/picture/1900/8.jpg",
    "type": categories[4]["name"],
    "rate": "4.5",
    "latitude": 28.679369,
    "longitude": 64.096013,
    "isFavorite": false,
    "album": albumImages,
    "description":
    "شهرستان میرجاوه در استان سیستان و بلوچستان  داری آثار تاریخی و طبیعی بسیاری است که قبرستان هفتاد ملا نیز از جمله این جاذبه‌های منحصربفرد است. این قبرها همیشه در سایه قرار دارند و هرگز نور آفتاب بخود ندیده اند. قدمت قبرها به 800 سال قبل برمیگردد.",
  },
];

List<Item> items =[] ;

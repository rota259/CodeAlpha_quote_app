import 'dart:math';

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class QuoteScreen extends StatefulWidget {
  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  final List<String> quotes = [
   "Either you die a hero or you live long enough to see yourself become a scoundrel",
    "هنا مش بحقق غير احلام",
    "انا بعدي بقا للمقياس اسم",
    "كل ما انسي عيوبي بفتكر اني فريد",
    "احب احيي نفسي مع جزيل الشكر",
    "بسرق الاتنشن بتخنق من المنشن",
    "سوبر هيرو من غير بدله",
    "انا كل دا ومجبتش لسا برايمي",
    "Execlusive انا زي Bein",
    "زي دافنشي برسم علي كبير",
    "شبح ف نفسي داني الفلته",
    "مافيا والفيت عالفاخر",
    "كوول اكتر من Jay cool",
    "لو رجع بيا الزمن برضو اضمنلك اني اختارني",
    "مُحقق احلامي أنا كونان",
    "انا سحابه النجوم بتطلع جنبي اخبيها",
    "ماشي الحال بكرا ممكن يجري",
    "حولتهم لتراب زي ثانوس",
    "عندي Option كشف الكدب ف انسي انك تنافقني",
    "ف الحرب like anubis",
    "عندي ابتسامه تفرس",
    "بلعب حتي لو متصاب",
    "بتسحرني زي هاري بوتر ✨❤",
    "دول مش نجوم أنا السما وعارف بقولك اي",
    "اطلبي اي حاجه أنا جِنّي",
    "فوق ف شايفكو خرايط",
    "تجيلي لوحدها م زيك بصطاد",
    "تقريبا أنا لغم اللي بييجي عليا يموت",
    "افهم انك بعدي هتحتاج تتعالج نفسي",
    "ستايلي مبيقدمش يا صاحبي زيه زي النوكيا",
    "مهما كان قيمته مش فارق بدلو",
    "صورتي متعلقه ف اوضتي دا مثلي الأعلى",
    "انا ماشي بدماغي وترفعلي الشابوه",
    "الله يرحم اي جثه لو ف أيدينا احنا التلاته",
    "هبقا عالتوب أنا عارف بس لسا",
    "انتي اوڤر بس كل حاجه فيكي ف الجون",
    "هحضر ف حته يبقا اخطف الشو",
    "من كتر الدق they call me مدقدق",
    "الحمدلله مش بنسا اصلي عشان اصلي دايما طبق الصوره",
    "ولا اي حوار اكننا بنبتدي",
    "دخول اسطوري كالمعتاد",
    "بلمع زي نجوم السما",
    "كل اطلاله انطلاقه",
    "بكسب away أو بكسب ف الhome",
    "هاتله جبنه لو دمه فار",
    "طاير عالجبهه أنا ساديو زماني",
    "ثانوس اعمل 🫰🏻ف تتلاشي",
    "دارس الفيزيا جاذب الكل أكني تفاحه",
    "حراق زي كنتاكي 🥵",
    "حاسس اني بومباستك فين شاجي ؟",
    "النيه لسا اسود من سواد الليل",
    "اسمي غني عن التعريف اسمك اصلا مش متصطب",
    "بحرقهم غصب عني كأني طباخ مبتدأ",
    "اسمي عالنت ف كل حته أكن جوجل صاحبي",
    "طول ما في شمس هفضل المع"
  ];

  String currentQuote = "Click below to get a random quote!";

  void generateQuote() {
    final random = Random();
    setState(() {
      currentQuote = quotes[random.nextInt(quotes.length)];
    });
  }

  void shareQuote(String quote) {
    Share.share(quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Quotes"),
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () => Navigator.pushNamed(context, '/quotes'),
          ),
         
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuote,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: generateQuote,
                child: Text("New Quote"),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => shareQuote(currentQuote),
                child: Text("Share Quote"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

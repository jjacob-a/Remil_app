import 'package:flutter/material.dart';

void main() {
  runApp(RemilApp());
}

class RemilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İlmü’l-Reml',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: 'Roboto',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> hazirlikListesi = [
    "1. Abdest alın.",
    "2. Sessiz ve temiz bir ortam seçin.",
    "3. Gönlünüzü boşaltın.",
    "4. Niyetinizi belirleyin.",
    "5. Sabah, ikindi veya gece yarısını tercih edin.",
    "6. Yanınızda kalem ve kağıt bulundurun.",
    "7. Rahatsız edilmeyeceğinizden emin olun.",
    "8. Sorunuzu zihninizde netleştirin.",
    "9. Uygulamayı tam odakla kullanın.",
    "10. Allah’a tevekkül edin ve başlayın.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        title: Text("İlmü’l-Reml - Hazırlık"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Fala başlamadan önce aşağıdaki hazırlıkları tamamlayınız:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: hazirlikListesi.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.check_circle_outline),
                    title: Text(hazirlikListesi[index]),
                  );
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DuaSayfasi()),
                );
              },
              child: Text(
                "Devam Et",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DuaSayfasi extends StatelessWidget {
  final List<String> dualar = [
    "• Ayet-el Kürsi",
    "• İhlas Suresi",
    "• Fatiha Suresi",
    "• Ya Latif (129 defa)",
    "• 7 defa Salavat",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        title: Text("Dua ve Zikirler"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Fala başlamadan önce aşağıdaki duaları okuyunuz:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ...dualar.map((dua) => ListTile(
              leading: Icon(Icons.book),
              title: Text(dua),
            )),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                // Buradan sonra kullanıcıya remil şekli seçtirme ekranı gelecek.
              },
              child: Text(
                "Remil Şekillerini Seç",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

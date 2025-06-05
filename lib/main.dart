import 'package:flutter/material.dart';

void main() {
  runApp(NetflixApp());
}

class NetflixApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Helvetica',
      ),
      home: NetflixHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NetflixHomePage extends StatelessWidget {

  final List<String> trendingImages = [
    'https://occ-0-1918-1380.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABXPLxcwwgSNJysBcgsCdT4vAyZfKaTiCyAGLWFj9ItBrSY6i7qTIwBs5hP4FV4CLeQlMCrGGWRc4GrmKgR5VcFg7iCyQIQv6enzMGjYO6Y6n2xR-ELvttE4fmIO9CZiWI08l.webp?r=b1e',
    'https://occ-0-1918-1380.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABccLLY3yUDRTmNyyHGyVBbIedubZ61qh3JkZz0r7NbiYW8K9Jx5EwJESkW-FkqqxjOww9ebJoPWPtS_HBcdZ15i6ndrdJZtonyY.webp?r=f9d&quot',
    'https://occ-0-1918-1380.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABeiCBDanu3Qu7KHnY8Rlc0rLhvJ2XfUgHD3h9k83ZXq_cnnCaz6QUiwQbRvFicza7DYrZs0Fnqid-3u_6XvpEzhvVOIZ7R-TcjT6OuKogXqYYzzhhgFt68NA25aPdU7v9LeY.webp?r=ca4&quot',
    'https://occ-0-1918-1380.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABQL-_6E7XNfj2ZqUCrB-O6WWzEnsG41JDuiLNVmXWYTo-FZHwpdn0wjNqTQLy6Djah3dW5FB1RmCmyi0Git_bXJGCVBRDuVki3v5qUUgCil1QaIb4bTo_qNbgiRRfAIvv9qr.webp?r=c3a&quot',
    'https://occ-0-1918-1380.1.nflxso.net/dnm/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABbKjhaqQ38F0c6WgZxjHdP9R1S13MHeFmVaAIpXvBl4FYBho2VNu3ddAV-zG4IkI29bkt4rT7w2-SWy3FcaEAFraO-uELfqIAIZZT8zpYEQzDH0Lb4op9aj4bXpxSQFZrD8a.webp?r=fa7&quot',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header with Netflix Logo
            _buildHeader(),
            // Hero Section
            _buildHeroSection(),
            // Trending Section
            _buildTrendingSection(),
            // Features Section
            _buildFeaturesSection(),
            // FAQ Section
            _buildFAQSection(),
            // Footer
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/netflix_logo.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  children: [
                    Icon(Icons.language, color: Colors.white, size: 16),
                    SizedBox(width: 5),
                    Text('Español', style: TextStyle(color: Colors.white)),
                    Icon(Icons.arrow_drop_down, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(width: 15),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                child: Text('Iniciar sesión', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.8),
            Colors.black,
          ],
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/netflix_bg_opacity_0.3.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Películas y series\nilimitadas y mucho\nmás',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'A partir de S/ 28.90. Cancela cuando quieras.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 30),
            Text(
              '¿Quieres ver Netflix ya? Ingresa tu email para\ncrear una cuenta o reiniciar tu membresía de\nNetflix.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 400,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Comenzar', style: TextStyle(color: Colors.white, fontSize: 16)),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward, color: Colors.white, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrendingSection() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tendencias',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trendingImages.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  margin: EdgeInsets.only(right: 15),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(trendingImages[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Text(
                                  '${index + 1}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        offset: Offset(2, 2),
                                        blurRadius: 4,
                                        color: Colors.black.withOpacity(0.8),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesSection() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Más motivos para unirte',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          _buildFeatureCard(
            'Disfruta en tu TV',
            'Ve en smart TV, PlayStation, Xbox, Chromecast, Apple TV, reproductores de Blu-ray y más.',
            Icons.tv,
            Colors.purple,
          ),
          _buildFeatureCard(
            'Descarga tus series para verlas offline',
            'Guarda tu contenido favorito y siempre tendrás algo para ver.',
            Icons.download,
            Colors.pink,
          ),
          _buildFeatureCard(
            'Disfruta donde quieras',
            'Películas y series ilimitadas en tu teléfono, tablet, laptop y TV.',
            Icons.phone_android,
            Colors.red,
          ),
          _buildFeatureCard(
            'Crea perfiles para niños',
            'Los niños vivirán aventuras con sus personajes favoritos en un espacio diseñado exclusivamente para ellos, gratis con tu membresía.',
            Icons.child_care,
            Colors.orange,
          ),
          SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text(
                'Comienza ya',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(String title, String description, IconData icon, Color iconColor) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF1a1a2e),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFAQSection() {
    List<String> faqs = [
      '¿Qué es Netflix?',
      '¿Cuánto cuesta Netflix?',
      '¿Dónde puedo ver Netflix?',
      '¿Cómo cancelo?',
      '¿Qué puedo ver en Netflix?',
      '¿Es bueno Netflix para los niños?',
    ];

    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Preguntas frecuentes',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ...faqs.map((faq) => Container(
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFF333333),
              borderRadius: BorderRadius.circular(4),
            ),
            child: ExpansionTile(
              title: Text(
                faq,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              trailing: Icon(Icons.add, color: Colors.white),
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Información sobre $faq...',
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                ),
              ],
            ),
          )).toList(),
          SizedBox(height: 30),
          Text(
            '¿Quieres ver Netflix ya? Ingresa tu email para crear una cuenta o reiniciar tu membresía de Netflix.',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Comenzar', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 5),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 16),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            '¿Preguntas? Llama al 0-800-52352',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(height: 20),
          Text(
            '© 2024 Netflix Perú - Todos los derechos reservados',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedInDetailPage extends StatelessWidget {
    const LinkedInDetailPage({super.key});

  // LinkedIn username
  static const   linkedinUsername = 'mahdi-menaa';

  // Fonction pour ouvrir LinkedIn
  Future<void> _openLinkedIn() async {
    final Uri appUri = Uri.parse('linkedin://profile/$linkedinUsername');
    final Uri webUri = Uri.parse('https://www.linkedin.com/in/$linkedinUsername');

    try {
      // Essayer d'ouvrir l'app LinkedIn
      await launchUrl(appUri);
    } catch (_) {
      // Sinon ouvrir le navigateur
      await launchUrl(webUri, mode: LaunchMode.inAppWebView);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Color(0xFFF3F4FB),
      body: SafeArea(
        child: Column(
          children: [
            // Custom AppBar
            Padding(
              padding:   EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                          offset:   Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon:   Icon(Icons.arrow_back, color: Color(0xFF111827)),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                    SizedBox(width: 12),
                    Text(
                    'Mon LinkedIn',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF111827),
                    ),
                  ),
                ],
              ),
            ),

              Spacer(),

            // Contenu principal
            Padding(
              padding:   EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  // Icon LinkedIn avec gradient
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient:   LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF0A66C2),
                          Color(0xFF004182),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color:   Color(0xFF0A66C2).withValues(alpha: 0.3),
                          blurRadius: 30,
                          offset:   Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        padding:   EdgeInsets.all(8),
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/512/174/174857.png',
                          width: 70,
                          height: 70,
                          color: Colors.white,
                          errorBuilder: (context, error, stackTrace) {
                            return   Icon(
                              Icons.work_rounded,
                              size: 70,
                              color: Colors.white,
                            );
                          },
                        ),
                      ),
                    ),
                  ),

                    SizedBox(height: 40),

                  // Titre
                    Text(
                    'Profil LinkedIn',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6B7280),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                  ),

                    SizedBox(height: 12),

                  // LinkedIn URL
                  Container(
                    padding:   EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color:   Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color:   Color(0xFF0A66C2).withValues(alpha: 0.2),
                      ),
                    ),
                    child: Text(
                      'linkedin.com/in/$linkedinUsername',
                      style:   TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0A66C2),
                      ),
                    ),
                  ),

                    SizedBox(height: 24),

                  // Stats Cards
                  Row(
                    children: [
                      Expanded(
                        child: _StatCard(
                          icon: Icons.people_rounded,
                          value: '500+',
                          label: 'Connexions',
                        ),
                      ),
                        SizedBox(width: 12),
                      Expanded(
                        child: _StatCard(
                          icon: Icons.article_rounded,
                          value: '25+',
                          label: 'Publications',
                        ),
                      ),
                    ],
                  ),

                    SizedBox(height: 20),

                  // Description
                    Text(
                    'Découvrez mon parcours professionnel,\nmes projets et mes recommandations',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6B7280),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

              Spacer(),

            // Bouton LinkedIn
            Padding(
              padding:   EdgeInsets.all(32),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _openLinkedIn,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:   Color(0xFF0A66C2),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shadowColor:   Color(0xFF0A66C2).withValues(alpha: 0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.open_in_new_rounded, size: 22),
                      SizedBox(width: 12),
                      Text(
                        'Ouvrir mon profil',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget pour les stats
class _StatCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

    _StatCard({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:   EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset:   Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 24,
            color:   Color(0xFF0A66C2),
          ),
            SizedBox(height: 8),
          Text(
            value,
            style:   TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
            SizedBox(height: 2),
          Text(
            label,
            style:   TextStyle(
              fontSize: 12,
              color: Color(0xFF6B7280),
            ),
          ),
        ],
      ),
    );
  }
}
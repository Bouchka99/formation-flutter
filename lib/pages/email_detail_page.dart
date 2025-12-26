import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

  class EmailDetailPage extends StatelessWidget {
    const EmailDetailPage({super.key});

  // Email
  static const  email = 'mahdi.menaa@ensi-uma.tn';

  // Fonction pour ouvrir l'app email
  /// Opens the email app with a prefilled email address
  Future<void> _sendEmail() async {
    final uri = Uri(scheme: 'mailto', path: email);
    if (!await launchUrl(uri)) {
      throw Exception('Could not send email to $email');
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
              padding: EdgeInsets.all(16),
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
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Color(0xFF111827)),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    //'M\'envoyer un email',
                    "M'envoyer un email",
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
                  // Icon animé avec gradient
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient:   LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF3B82F6),
                          Color(0xFF2563EB),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color:   Color(0xFF3B82F6).withValues(alpha: 0.3),
                          blurRadius: 30,
                          offset:   Offset(0, 10),
                        ),
                      ],
                    ),
                    child:   Icon(
                      Icons.email_rounded,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),

                    SizedBox(height: 40),

                  // Titre
                    Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6B7280),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                  ),

                    SizedBox(height: 12),

                  // Email
                  Text(
                    email,
                    textAlign: TextAlign.center,
                    style:   TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF111827),
                      letterSpacing: 0.3,
                    ),
                  ),

                    SizedBox(height: 16),

                  // Description
                  Container(
                    padding:   EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color:   Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:   Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.schedule_rounded,
                          size: 16,
                          color: Color(0xFF2563EB),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Réponse sous 24h',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF2563EB),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                    SizedBox(height: 24),

                  // Info supplémentaire
                    Text(
                    'Je suis disponible pour discuter\nde vos projets et opportunités',
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

            // Bouton email
            Padding(
              padding:   EdgeInsets.all(32),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _sendEmail,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:   Color(0xFF3B82F6),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shadowColor:   Color(0xFF3B82F6).withValues(alpha: 0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child:   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.send_rounded, size: 22),
                      SizedBox(width: 12),
                      Text(
                        'Envoyer un email',
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
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneDetailPage extends StatelessWidget {
  final String phoneNumber;

  const PhoneDetailPage({super.key, required this.phoneNumber});

  // Numéro de téléphone
  //static    phoneNumber = '12345678';

  // Fonction pour lancer l'appel
  Future <void> _makePhoneCall() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:    Color(0xFFF3F4FB),
      body: SafeArea(
        child: Column(
          children: [
            // Custom AppBar
            Padding(
              padding:    EdgeInsets.all(16),
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
                          offset:    Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon:    Icon(Icons.arrow_back, color: Color(0xFF111827)),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Me contacter',
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
              padding:    EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
                  // Icon animé avec gradient
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient:    LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF10B981),
                          Color(0xFF059669),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF10B981).withValues(alpha: 0.3),
                          blurRadius: 30,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.phone_rounded,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 40),

                  // Titre
                  Text(
                    'Téléphone',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF6B7280),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                    ),
                  ),

                     SizedBox(height: 12),

                  // Numéro
                  Text(
                    phoneNumber,
                    style:    TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF111827),
                      letterSpacing: 1,
                    ),
                  ),

                     SizedBox(height: 16),

                  // Description
                  Container(
                    padding:    EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFECFDF5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 16,
                          color: Color(0xFF059669),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Disponible 9h - 18h',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF059669),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

               Spacer(),

            // Bouton d'appel
            Padding(
              padding:    EdgeInsets.all(32),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _makePhoneCall,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:    Color(0xFF10B981),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shadowColor:    Color(0xFF10B981).withValues(alpha: 0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone_rounded, size: 22),
                      SizedBox(width: 12),
                      Text(
                        'Appeler maintenant',
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
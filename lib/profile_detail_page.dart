import 'package:flutter/material.dart';


class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({super.key});

  @override
  Widget build(BuildContext context) {

    Color backgroundColor = Colors.white;


    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // HEADER
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF4F46E5),
                            Color(0xFF8B5CF6)
                          ]
                      )
                  ),

                  // HEADER
                  child: Column(
                    children: [
                      SizedBox(height: 32,),
                      // IMAGE
                      Container(
                        height: 96,
                        width: 96,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage('https://media.licdn.com/dms/image/v2/D4D03AQF-eKMDpJHT0w/profile-displayphoto-crop_800_800/B4DZsTL6ZiG0AI-/0/1765553449627?e=1767830400&v=beta&t=-KsQW1ENE5Aw10bSbbmnl8K1urlvICBNpIJpCRXMMCY')
                            ),
                            border: Border.all(
                                width: 4,
                                color: Colors.white
                            )

                        ),
                      ),

                      SizedBox(height: 16,),
                      // FIRSTNAME & LASTNAME
                      Text(
                        "Mahdi MENAA",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600

                        ),
                      ),
                      SizedBox(height: 4,),
                      // JOB
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 32,),
                    ],
                  )

              ),

              // ABOUT
              _SectionCard(
                backgroundColor: backgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "A propos",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF111827)
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "Passionné par la création d'applications mobile innovantes et l'apprentissage de nouvelles technologies. J'aime relever des défis complexes et collaborer avec des équipes dynamiques pour créer des solutions qui ont un impact réel.",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF4B5563)
                      ),
                    ),
                  ],
                ),
              ),

              // CONTACT
              Row(
                children: [
                  SizedBox(width: 16.0),
                  Expanded(
                    child: _ContactButton(
                      label: "Téléphone",
                      icon: Icons.phone,
                      onTap: (){

                      },
                      color: Color(0xFFE0FBE8),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: _ContactButton(
                      label: "Email",
                      icon: Icons.email_outlined,
                      onTap: (){

                      },
                      color: Color(0xFFE3F2FD),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: _ContactButton(
                      label: "Linkedin",
                      icon: Icons.web_asset,
                      onTap: (){

                      },
                      color: Color(0xFFEEF2FF),
                    ),
                  ),
                  SizedBox(width: 16.0),
                ],
              ),

              // HOBBIES
              _SectionCard(
                backgroundColor: Color(0xFFFDF2FF),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Intérêts",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF6C5CE7),
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: [
                        _TagChip(label: 'Camping',),
                        _TagChip(label: 'Chanter',),
                        _TagChip(label: 'Football',),
                        _TagChip(label: 'Lecture',),
                        _TagChip(label: 'Jeux vidéos',),
                        _TagChip(label: 'Coding',),
                      ],
                    )
                  ],
                ),
              ),

              // Competences
              _SectionCard(
                backgroundColor: Color(0xFFEEF2FF),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Compétences',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF111827),
                      ),
                    ),
                    SizedBox(height: 16.0,),
                    _SkillBar(
                      label: 'Flutter',
                      progress: 0.9,
                    ),
                    _SkillBar(
                      label: 'SpringBoot',
                      progress: 0.85,
                    ),
                    _SkillBar(
                      label: 'Node.js',
                      progress: 0.75,
                    ),
                  ],
                ),
              )


            ],
          ),
        )

    );
  }
}

Widget buildContainer(Color backgroundColor,Widget child) {
  return Container(
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.all(16),
    decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 16,
              offset: Offset(0,8)

          )
        ]
    ),
    child: child,
  );
}


class _SectionCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;


  const _SectionCard({required this.backgroundColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 16,
                offset: Offset(0,8)

            )
          ]
      ),
      child: child,
    );
  }
}

class _ContactButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ContactButton({
    required this.color,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(100),
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // parler quelle ne marche pas si on fait expanded et non flexible dans le label !!
            // ➡️ Le Expanded s’étire sur toute la largeur disponible
            // ➡️ Le Row considère que l’espace est déjà utilisé
            // ➡️ mainAxisAlignment: center n’a plus d’effet visible
            // 👉 Flexible autorise le child à prendre seulement la place dont il a besoin
            // 👉 Il ne force pas l’occupation de tout l’espace restant
            children: [
              Icon(icon, size: 16, color: const Color(0xFF111827)),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF111827),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class _TagChip extends StatelessWidget {

  final String label;
  const _TagChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 6.0
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Color(0xFFE5E7EB)),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          color: Color(0xFF4B5563),
        ),
      ),
    );
  }
}

class _SkillBar extends StatelessWidget {

  final String label; // "Flutter"
  final double progress; // 0.9

  const _SkillBar({super.key, required this.label, required this.progress});

  @override
  Widget build(BuildContext context) {

    // 0.9 => 90 %
    int progressDouble = (progress * 100).round();
    String progressText = "$progressDouble %";
    String progressText2 = "${(progressText * 100)} %"; // progressText = progressText2 = 90.0

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF4B5563),
                ),
              ),
              //Spacer(),
              Text(
                progressText,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color(0xFF6C5CE7),
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 8.0,),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.white,
              minHeight: 6,
              valueColor: AlwaysStoppedAnimation(Color(0xFF6C5CE7)),
            ),
          ),
        ],
      ),
    )
    ;
  }
}




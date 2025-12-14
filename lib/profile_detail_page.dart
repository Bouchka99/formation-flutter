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
                                image: NetworkImage('https://media.licdn.com/dms/image/v2/D4D03AQFsxJfhkOIGUA/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1695074277503?e=1766016000&v=beta&t=sir2RNIxFcGv4tdAQa1o83AupT_zP8I9P52izyna8M4')
                            ),
                            border: Border.all(
                                width: 4,
                                color: Colors.white
                            )

                        ),
                        //child: Image.network("https://media.licdn.com/dms/image/v2/D4D03AQFsxJfhkOIGUA/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1695074277503?e=1766016000&v=beta&t=sir2RNIxFcGv4tdAQa1o83AupT_zP8I9P52izyna8M4"),
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

              // Contact
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


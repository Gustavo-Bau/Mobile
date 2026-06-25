import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Container(
        height: .maxFinite,
        width: .maxFinite,
        child: Column(
          children: [
            Image.asset('assets/images/back.png', height: 400, width: .maxFinite,),
            Text(
              'Millions of Songs.\n Free on Spotify.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Avenir',
                fontWeight: .bold,
              ),
            ),
            SizedBox(height: 22),
            ElevatedButton(
              onPressed: () => {},
              child: Text(
                'Sign up free',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Avenir',
                  fontWeight: .bold,
                ),
              ),

              style: ButtonStyle(
                minimumSize: .all<Size>(Size(338, 50)),
                backgroundColor: .all<Color>(Color(0xFF1ED760)),
              ),
            ),

            SizedBox(height: 12),

            Container(
              decoration: BoxDecoration(
                border: BoxBorder.all(
                  color: Colors.white
                ),
                borderRadius: .circular(45),
              ),
              height: 50,
              width: 338,
              child: Center(
              child: Row(
                  mainAxisAlignment: .spaceAround,
                children: [
                  Image.asset('assets/images/google.png'),
                  Text(
                    'Continue with Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Avenir',
                      fontWeight: .bold,
                    ),
                  ),
                  Container(width: 10,)
                ],
              ),
              )
            ),

            SizedBox(height: 12),

            Container(
                decoration: BoxDecoration(
                  border: BoxBorder.all(
                      color: Colors.white
                  ),
                  borderRadius: .circular(45),
                ),
                height: 50,
                width: 338,
                child: Center(
                  child: Row(
                    mainAxisAlignment: .spaceAround,
                    children: [
                      Image.asset('assets/images/facebook.png'),
                      Text(
                        'Continue with Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Avenir',
                          fontWeight: .bold,
                        ),
                      ),
                      Container(width: 10,)
                    ],
                  ),
                )
            ),

            SizedBox(height: 12),

            Container(
                decoration: BoxDecoration(
                  border: BoxBorder.all(
                      color: Colors.white
                  ),
                  borderRadius: .circular(45),
                ),
                height: 50,
                width: 338,
                child: Center(
                  child: Row(
                    mainAxisAlignment: .spaceAround,
                    children: [
                      Image.asset('assets/images/apple.png'),
                      Text(
                        'Continue with Apple',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Avenir',
                          fontWeight: .bold,
                        ),
                      ),
                      Container(width: 10,)
                    ],
                  ),
                )
            ),

            SizedBox(height: 12,),

            Text('Log in',
              style: TextStyle(
                color: Colors.white,
                fontWeight: .bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

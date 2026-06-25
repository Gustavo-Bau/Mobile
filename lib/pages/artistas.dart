import 'package:flutter/material.dart';
import 'package:spoty/widgets/appbarpersonalizado.dart';
import 'package:spoty/widgets/imagemArtistas.dart';

class Artistas extends StatefulWidget {
  const Artistas({super.key});

  @override
  State<Artistas> createState() => _ArtistasState();
}

class _ArtistasState extends State<Artistas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          AppBarPersonalizado(
            Icons.arrow_back_ios,
            'Choose 3 or more artists you like.',
          ),
          Container(
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(Icons.search),
                hint: Text('Search', style: TextStyle(fontWeight: .w600)),
                fillColor: Color(0xFFF5F5F5),
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 655,
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                ImagemArtistas(
                    'https://stories.cnnbrasil.com.br/wp-content/uploads/sites/9/2025/03/image_51f5a3.png',
                    'Gustavo Lima'
                ),
                ImagemArtistas(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBsUOH08LEgBLBPtCBrEA8Df-xdNPGw84Gf9aNslVaqXVaaShd7jqizRmHygsmDnG5fCknZJemwPMCmaX-25E-6MHHmF5sXpuRCAUAHEZ-&s=10',
                    'Michel Telo'
                ),
                ImagemArtistas(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8VVvB-wKDQno9eu6wlN8xJgxueRhB3-e5Yw&s',
                  'Billie Eilish',
                ),
                ImagemArtistas(
                  'https://stories.cnnbrasil.com.br/wp-content/uploads/sites/9/2025/03/image_51f5a3.png',
                  'Gustavo Lima',
                ),
                ImagemArtistas(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBsUOH08LEgBLBPtCBrEA8Df-xdNPGw84Gf9aNslVaqXVaaShd7jqizRmHygsmDnG5fCknZJemwPMCmaX-25E-6MHHmF5sXpuRCAUAHEZ-&s=10',
                  'Michel Telo',
                ),
                ImagemArtistas(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8VVvB-wKDQno9eu6wlN8xJgxueRhB3-e5Yw&s',
                  'Billie Eilish',
                ),
                ImagemArtistas(
                  'https://stories.cnnbrasil.com.br/wp-content/uploads/sites/9/2025/03/image_51f5a3.png',
                  'Gustavo Lima',
                ),
                ImagemArtistas(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBsUOH08LEgBLBPtCBrEA8Df-xdNPGw84Gf9aNslVaqXVaaShd7jqizRmHygsmDnG5fCknZJemwPMCmaX-25E-6MHHmF5sXpuRCAUAHEZ-&s=10',
                  'Michel Telo',
                ),
                ImagemArtistas(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8VVvB-wKDQno9eu6wlN8xJgxueRhB3-e5Yw&s',
                  'Billie Eilish',
                ),
                ImagemArtistas(
                  'https://stories.cnnbrasil.com.br/wp-content/uploads/sites/9/2025/03/image_51f5a3.png',
                  'Gustavo Lima',
                ),
                ImagemArtistas(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBsUOH08LEgBLBPtCBrEA8Df-xdNPGw84Gf9aNslVaqXVaaShd7jqizRmHygsmDnG5fCknZJemwPMCmaX-25E-6MHHmF5sXpuRCAUAHEZ-&s=10',
                  'Michel Telo',
                ),
                ImagemArtistas(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8VVvB-wKDQno9eu6wlN8xJgxueRhB3-e5Yw&s',
                  'Billie Eilish',
                ),
              ],
            ),
          ),
          IgnorePointer(
            child: Container(
              width: double.maxFinite,
              height: 155,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: .topCenter,
                  end: .bottomCenter,
                  colors: [Colors.black12, Colors.black54, Colors.black],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
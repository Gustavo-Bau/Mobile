import 'package:flutter/material.dart';

const beatlesCover = 'https://i.scdn.co/image/ab67616d0000b273c29b82189dc2f0ddacbf98f3';

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key});

  static const songs = [
    'Love Me Do - Mono / Remastered',
    'From Me to You - Mono / Remastered',
    'She Loves You - Mono / Remastered',
    'I Want To Hold Your Hand - Remastered 2015',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3B0705),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xFFD93027), Color(0xFF210403)]),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Align(alignment: Alignment.topLeft, child: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.chevron_left, color: Colors.white))),
              Image.network(beatlesCover, height: 214, width: 214, fit: BoxFit.cover, errorBuilder: (_, __, ___) => const _CoverFallback(size: 214)),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('1(Remastered)', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w800)),
                    const SizedBox(height: 10),
                    const Row(children: [CircleAvatar(radius: 8, backgroundImage: NetworkImage('https://i.scdn.co/image/ab6761610000e5ebe9348cc01ff5d55971b22433')), SizedBox(width: 7), Text('The Beatles', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 12))]),
                    const SizedBox(height: 6),
                    const Text('Album • 2000', style: TextStyle(color: Colors.white70, fontSize: 12)),
                    Row(
                      children: [
                        const Icon(Icons.favorite_border, color: Colors.white70),
                        const SizedBox(width: 22),
                        const CircleAvatar(radius: 9, backgroundColor: Color(0xFF1DB954), child: Icon(Icons.arrow_downward, size: 13, color: Colors.black)),
                        const SizedBox(width: 22),
                        const Icon(Icons.more_horiz, color: Colors.white70),
                        const Spacer(),
                        FloatingActionButton.small(onPressed: () => Navigator.pushNamed(context, '/player'), backgroundColor: const Color(0xFF1DB954), child: const Icon(Icons.pause, color: Colors.black)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    for (var i = 0; i < songs.length; i++) _SongTile(title: songs[i], active: i == 1),
                  ],
                ),
              ),
              const Spacer(),
              _MiniPlayer(),
              _BottomNav(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SongTile extends StatelessWidget {
  const _SongTile({required this.title, this.active = false});
  final String title;
  final bool active;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Row(children: [
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(title, style: TextStyle(color: active ? const Color(0xFF1DB954) : Colors.white, fontSize: 14)), const SizedBox(height: 2), const Text('The Beatles', style: TextStyle(color: Colors.white70, fontSize: 11))])),
          const Icon(Icons.more_horiz, color: Colors.white70, size: 20),
        ]),
      );
}

class _MiniPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(7),
        height: 50,
        color: const Color(0xFF6C1630),
        child: Row(children: [
          ClipRRect(borderRadius: BorderRadius.circular(4), child: Image.network(beatlesCover, width: 36, height: 36, fit: BoxFit.cover, errorBuilder: (_, __, ___) => const _CoverFallback(size: 36))),
          const SizedBox(width: 8),
          const Expanded(child: Text('From Me to You - Mono / Remastered • The Beatles', overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w700))),
          const Icon(Icons.bluetooth, color: Color(0xFF1DB954), size: 20),
          IconButton(onPressed: () {}, icon: const Icon(Icons.pause, color: Colors.white)),
        ]),
      );
}

class _BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const SizedBox(
        height: 58,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.home, color: Colors.white, size: 20), Text('Home', style: TextStyle(color: Colors.white, fontSize: 10))]),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.search, color: Colors.white70, size: 20), Text('Search', style: TextStyle(color: Colors.white70, fontSize: 10))]),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.library_music_outlined, color: Colors.white70, size: 20), Text('Your Library', style: TextStyle(color: Colors.white70, fontSize: 10))]),
        ]),
      );
}


class _CoverFallback extends StatelessWidget {
  const _CoverFallback({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      color: const Color(0xFFC93E31),
      child: const Center(
        child: Text('1', style: TextStyle(color: Color(0xFFFFE66D), fontSize: 48, fontWeight: FontWeight.w800)),
      ),
    );
  }
}

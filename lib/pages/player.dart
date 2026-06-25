import 'package:flutter/material.dart';
import 'album.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7F1812),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(14, 16, 14, 8),
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xFFC52E24), Color(0xFF3B0504)]),
          ),
          child: Column(
            children: [
              Row(children: [const Icon(Icons.keyboard_arrow_down, color: Colors.white), const Spacer(), const Text('1(Remastered)', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w800)), const Spacer(), const Icon(Icons.more_horiz, color: Colors.white)]),
              const SizedBox(height: 56),
              Image.network(beatlesCover, height: 340, width: 340, fit: BoxFit.cover, errorBuilder: (_, __, ___) => const _PlayerCoverFallback()),
              const SizedBox(height: 58),
              Row(children: const [Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('From Me to You - Mono / Remast', overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800)), SizedBox(height: 4), Text('The Beatles', style: TextStyle(color: Colors.white70, fontSize: 14))])), Icon(Icons.favorite_border, color: Colors.white)]),
              const SizedBox(height: 20),
              SliderTheme(data: SliderTheme.of(context).copyWith(trackHeight: 2, thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6)), child: Slider(value: .35, onChanged: (_) {}, activeColor: Colors.white, inactiveColor: Colors.white38)),
              const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('0:38', style: TextStyle(color: Colors.white70, fontSize: 10)), Text('-1:18', style: TextStyle(color: Colors.white70, fontSize: 10))]),
              const SizedBox(height: 18),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [const Icon(Icons.shuffle, color: Colors.white), const Icon(Icons.skip_previous, color: Colors.white, size: 34), CircleAvatar(radius: 32, backgroundColor: Colors.white, child: IconButton(onPressed: () {}, icon: const Icon(Icons.pause, color: Colors.black, size: 34))), const Icon(Icons.skip_next, color: Colors.white, size: 34), const Icon(Icons.repeat, color: Color(0xFF1DB954))]),
              const SizedBox(height: 28),
              const Row(children: [Icon(Icons.bluetooth, color: Color(0xFF1DB954), size: 15), Text(' BEATSPIll+', style: TextStyle(color: Color(0xFF1DB954), fontSize: 10)), Spacer(), Icon(Icons.ios_share, color: Colors.white70), SizedBox(width: 26), Icon(Icons.queue_music, color: Colors.white70)]),
              const Spacer(),
              Container(height: 50, padding: const EdgeInsets.symmetric(horizontal: 14), decoration: BoxDecoration(color: const Color(0xFFE56F2C), borderRadius: BorderRadius.circular(6)), child: const Row(children: [Text('Lyrics', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800)), Spacer(), Chip(label: Text('MORE', style: TextStyle(color: Colors.white, fontSize: 9)), backgroundColor: Color(0xFF6A2E18), padding: EdgeInsets.zero)])),
            ],
          ),
        ),
      ),
    );
  }
}


class _PlayerCoverFallback extends StatelessWidget {
  const _PlayerCoverFallback();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 340,
      color: const Color(0xFFC93E31),
      child: const Center(
        child: Text('1', style: TextStyle(color: Color(0xFFFFE66D), fontSize: 150, fontWeight: FontWeight.w800)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Podcasts extends StatelessWidget {
  const Podcasts({super.key});

  static const _lastPodcastImage = 'https://i.scdn.co/image/ab6765630000ba8a6adf65169a7d65f425e5db7a';

  static const _items = [
    ('Rotten Mango', _lastPodcastImage),
    ('Last Podcast On\nThe Left', _lastPodcastImage),
    ('More in\nTrue crime', ''),
    ('The Joe Rogan\nExperience', _lastPodcastImage),
    ('Gee Thanks', _lastPodcastImage),
    ('More in\nComedy', ''),
    ('Distractible', _lastPodcastImage),
    ('My Brother, My\nBrother And Me', _lastPodcastImage),
    ('More in Stories', ''),
    ('Call Her Daddy', _lastPodcastImage),
    ('Relationships', _lastPodcastImage),
    ('More in\nRelationships', ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 32, 18, 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Now choose some\npodcasts.',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      height: 1.05,
                    ),
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    height: 36,
                    child: TextField(
                      style: const TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFF2F2F2),
                        prefixIcon: const Icon(Icons.search, size: 17, color: Colors.black87),
                        hintText: 'Search',
                        hintStyle: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(3), borderSide: BorderSide.none),
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: _items.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 16,
                        childAspectRatio: .72,
                      ),
                      itemBuilder: (context, index) {
                        final item = _items[index];
                        final isMore = item.$2.isEmpty;
                        return Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: isMore ? _moreColor(index) : Colors.grey.shade900,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: isMore
                                    ? Center(
                                        child: Text(
                                          item.$1,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w800),
                                        ),
                                      )
                                    : Image.network(
                                        item.$2,
                                        fit: BoxFit.cover,
                                        errorBuilder: (_, __, ___) => const _PodcastFallback(),
                                      ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              item.$1,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w800, height: 1.1),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/artistas'),
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF2A2A2A), foregroundColor: Colors.white, minimumSize: const Size(92, 42)),
                      child: const Text('Artists', style: TextStyle(fontWeight: FontWeight.w800)),
                    ),
                    const SizedBox(width: 12),
                    ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/search'),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.black, minimumSize: const Size(92, 42)),
                      child: const Text('Done', style: TextStyle(fontWeight: FontWeight.w800)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _moreColor(int index) {
    const colors = [Color(0xFFD33167), Color(0xFF8E130C), Color(0xFF073D1D), Color(0xFF243B75)];
    return colors[(index ~/ 3) % colors.length];
  }
}


class _PodcastFallback extends StatelessWidget {
  const _PodcastFallback();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2A2A2A),
      child: const Center(
        child: Icon(Icons.podcasts, color: Colors.white70, size: 32),
      ),
    );
  }
}

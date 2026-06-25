import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  static const _items = [
    ('FKA twigs', 'Artist', 'https://i.scdn.co/image/ab6761610000e5eb8048bc6f1f45a8f15a1d39f9'),
    ('Hozier', 'Artist', 'https://i.scdn.co/image/ab6761610000e5ebad85a585103dfc2f3439119a'),
    ('Grimes', 'Artist', 'https://i.scdn.co/image/ab6761610000e5ebd6dce4989819eb8d92a28b14'),
    ('1(Remastered)', 'Album • The Beatles', 'https://i.scdn.co/image/ab67616d00001e02c29b82189dc2f0ddacbf98f3'),
    ('HAYES', 'Artist', 'https://i.scdn.co/image/ab6761610000e5eb58b3057abe9c53761229a1ef'),
    ('Led Zeppelin', 'Artist', 'https://i.scdn.co/image/ab6761610000e5ebc15c1db7827cf39325a50d98'),
    ('Les', 'Song • Childish Gambino', 'https://i.scdn.co/image/ab67616d00001e02b1f6a8bc400f80a5a0d5b089'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 18, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 34,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF2A2A2A),
                          prefixIcon: const Icon(Icons.search, color: Colors.white70, size: 17),
                          hintText: 'Search',
                          hintStyle: const TextStyle(color: Colors.white, fontSize: 13),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7), borderSide: BorderSide.none),
                          contentPadding: EdgeInsets.zero,
                        ),
                        style: const TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                  TextButton(onPressed: () {}, child: const Text('Cancel', style: TextStyle(color: Colors.white, fontSize: 13))),
                ],
              ),
              const SizedBox(height: 26),
              const Text('Recent searches', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 15)),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: _items.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final item = _items[index];
                    return GestureDetector(
                      onTap: index == 3 ? () => Navigator.pushNamed(context, '/album') : null,
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(index == 3 || index == 6 ? 0 : 22),
                            child: Image.network(item.$3, height: 44, width: 44, fit: BoxFit.cover),
                          ),
                          const SizedBox(width: 14),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.$1, style: const TextStyle(color: Colors.white, fontSize: 15)),
                              const SizedBox(height: 2),
                              Text(item.$2, style: const TextStyle(color: Colors.white70, fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

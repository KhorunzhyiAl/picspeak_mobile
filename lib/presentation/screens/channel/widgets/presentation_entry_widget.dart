import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/domain/entities/presentation.dart';

class PresentationEntryWidget extends StatelessWidget {
  const PresentationEntryWidget({
    Key? key,
    required this.presentation,
  }) : super(key: key);

  final Presentation presentation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        elevation: 0,
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            Row(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    'https://picsum.photos/300/200',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            presentation.title,
                            style: const TextStyle(
                              color: Colors.black87,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Slides: ${presentation.slides.length}',
                            style: const TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {},
                splashColor: Theme.of(context).splashColor.withAlpha(100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: json_serializable
import 'package:picspeak/domain/data/presentation.dart';

class Channel {
  final String id;
  final String name;
  final List<Presentation> presentations;

  const Channel({required this.id, required this.name, this.presentations = _hardcodePresentations});
}

// TODO: remove this
const _hardcodePresentations = <Presentation>[
  Presentation(
    id: '1a2b3c',
    author: 'Authorr',
    title: 'Title: lorem ipsum dores',
    slides: [],
  ),
  Presentation(
    id: '4a56c',
    author: 'Authorr',
    title: 'Title: lorem ipsum dores',
    slides: [],
  ),
];

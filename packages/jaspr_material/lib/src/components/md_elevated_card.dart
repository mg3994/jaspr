import 'package:jaspr/jaspr.dart';

class MdElevatedCard extends StatelessComponent {
  const MdElevatedCard({
    this.id, 
    this.classes, 
    this.styles, 
    this.attributes, 
    this.events, 
    this.children, 
    super.key,
  });

  final String? id;
  final String? classes;
  final Styles? styles;
  final Map<String, String>? attributes;
  final Map<String, EventCallback>? events;
  final List<Component>? children;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Head(children: [
      script(src: 'packages/jaspr_material/js/md-elevated-card.js', async: true, []),
    ]);
    yield DomComponent(
      tag: 'md-elevated-card',
      id: id,
      styles: styles,
      attributes: {
        ...?attributes,
      },
      events: events,
      children: children,
    );
  }
}
  
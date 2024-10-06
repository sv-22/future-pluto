part of '../index.dart';

class PlutoDocsButton extends StatelessWidget {
  final String url;

  PlutoDocsButton({
    Key? key,
    required this.url,
  })  : assert(url.isNotEmpty),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        launchUrl(url);
      },
      icon: const FaIcon(FontAwesomeIcons.book),
      label: const Text('Documentation'),
    );
  }
}

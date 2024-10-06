part of '../index.dart';

class PlutoExampleButton extends StatelessWidget {
  final String url;

  PlutoExampleButton({
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
      icon: const FaIcon(FontAwesomeIcons.github),
      label: const Text('Source'),
    );
  }
}

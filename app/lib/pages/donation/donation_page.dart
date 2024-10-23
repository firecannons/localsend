import 'package:flutter/material.dart';
import 'package:localsend_app/gen/strings.g.dart';
import 'package:localsend_app/model/state/purchase_state.dart';
import 'package:localsend_app/pages/donation/donation_page_vm.dart';
// [FOSS_REMOVE_START]
//import 'package:localsend_app/provider/purchase_provider.dart';
// [FOSS_REMOVE_END]
import 'package:localsend_app/widget/responsive_list_view.dart';
import 'package:refena_flutter/refena_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class _LinkDonation extends StatelessWidget {
  const _LinkDonation();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        TextButton.icon(
          onPressed: () async {
            await launchUrl(Uri.parse('https://github.com/sponsors/Tienisto'), mode: LaunchMode.externalApplication);
          },
          icon: const Icon(Icons.open_in_new),
          label: const Text('Github'),
        ),
        TextButton.icon(
          onPressed: () async {
            await launchUrl(Uri.parse('https://ko-fi.com/tienisto'), mode: LaunchMode.externalApplication);
          },
          icon: const Icon(Icons.open_in_new),
          label: const Text('Ko-fi'),
        ),
      ],
    );
  }
}

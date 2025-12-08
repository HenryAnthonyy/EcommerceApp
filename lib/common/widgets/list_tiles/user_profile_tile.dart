import 'package:flutter/material.dart';
import 'package:flutter_app_template/utils/constants/colors.dart';
import 'package:flutter_app_template/utils/constants/image_strings.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Image(
        image: AssetImage(TImages.userProfile1),
      ),
      title: Text(
        'Henry Anthony',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'example@email.com',
        style:
            Theme.of(context).textTheme.bodySmall!.apply(color: TColors.white),
      ),
      trailing: const Icon(
        Iconsax.edit_2,
        color: TColors.white,
      ),
    );
  }
}

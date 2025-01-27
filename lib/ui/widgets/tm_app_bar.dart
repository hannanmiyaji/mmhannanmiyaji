import 'package:flutter/material.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppBar({
    super.key,
    this.fromUpdateProfile = false,
  });

  final bool fromUpdateProfile;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: AppColors.themeColor,
      title: Row(
        children: [
          CircleAvatar(
            radius: 22,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: GestureDetector(
              onTap: (){
                if (fromUpdateProfile){
                  return;
                }
                Navigator.pushNamed(context, UpdateProfileScreen.name);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AuthController.userModel!.firstName.toString(),
                    style: textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    " hannanmiyaji@gmail.com",
                    style: textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}


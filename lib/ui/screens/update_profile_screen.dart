import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/widgets/screen_background.dart';

import '../widgets/tm_app_bar.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  static const String name = '/update-profile';

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  final TextEditingController _firstnameTEController = TextEditingController();
  final TextEditingController _lastnameTEController = TextEditingController();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final GlobalKey<FormState> _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: TMAppBar(
        fromUpdateProfile: true,
      ),
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _fromKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
                    Text(
                      'Update Profile',
                      style: textTheme.titleLarge,
                    ),
                    const SizedBox(height: 24),
                    _buildPhotoPicker(),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: _emailTEController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: _firstnameTEController,
                      decoration: InputDecoration(
                        hintText: 'Fast Name',
                      ),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: _lastnameTEController,
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                      ),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _mobileTEController,
                      decoration: InputDecoration(
                        hintText: 'Mobile',
                      ),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: _passwordTEController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.arrow_circle_right_outlined))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoPicker() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              'Photo',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 12),
          Text('No item selected', maxLines: 1),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _firstnameTEController.dispose();
    _lastnameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}


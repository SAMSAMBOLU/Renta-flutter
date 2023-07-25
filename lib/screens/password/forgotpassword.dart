// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _sendResetLink(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // TODO: Implement your logic to send the password reset link.
      String email = _emailController.text;
      print('Send password reset link to: $email');
      // Here you would typically send the reset link to the user's email.
      // You can integrate with your backend API or use a third-party service.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
        // title: Text('Forgot Password'),
      // ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address.';
                  } else if (!value.contains('@')) {
                    return 'Please enter a valid email address.';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal
                ),
                onPressed: () => _sendResetLink(context),
                child: Text('Send Reset Link'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0FDF4),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        //app bar icon
        actions: const [
          Icon(Icons.search, color: Colors.grey, size: 24),
          SizedBox(width: 10),
          Icon(Icons.close, color: Colors.grey, size: 24),
          SizedBox(width: 10),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset('assets/logo/alpha logo.jpg', height: 80),

                  const SizedBox(height: 8),

                  //ALPHA TEXT
                  const Text(
                    'Alpha Learn',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F2937),
                    ),
                  ),

                  //CAMPUS ANYWHERE TEXT
                  const Text(
                    'CAMPUS ANYWHERE',
                    style: TextStyle(fontSize: 12, color: Color(0xFF6B7280)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            //Lets you in text
            const Text(
              'Let\'s You In',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F2937),
              ),
            ),
            SizedBox(height: 8),
            //Create your account
            const Text(
              'Create your account',
              style: TextStyle(fontSize: 16, color: Color(0xFF6b7280)),
            ),

            const SizedBox(height: 30),
            _buildInputField('Your Name', 'Islam magdi'),
            const SizedBox(height: 20),
            _buildInputField('Username', 'iamislammagdi'),
            const SizedBox(height: 20),
            _buildInputField(
              'Email',
              'Islam@gmail.com',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            _buildPasswordField(),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/main_app');
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF22C55E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
                padding: EdgeInsets.symmetric(vertical: 18),
                minimumSize: const Size(double.infinity, 50),
              ),

              //Create an account
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?!',
                  style: TextStyle(fontSize: 16, color: Color(0xFF6B7280)),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/signin');
                  },

                  //SIGNIN TEXT
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 16, color: Color(0xFF22C55E)),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(
    String label,
    String hintText, {
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          //'Already have an account?!',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF4B5563),
          ),
        ),

        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),

          child: TextField(
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Color(0xFF9CA3AF)),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF4B5563),
          ),
        ),

        const SizedBox(height: 8),

        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),

          child: TextField(
            obscureText: !_isPasswordVisible,
            decoration: InputDecoration(
              hintText: '***********',
              hintStyle: TextStyle(color: Color(0xFF9CA3AF)),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: const Color(0xFF9CA3AF),
                ),

                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

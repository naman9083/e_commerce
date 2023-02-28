import 'package:e_commerce/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  bool? _obscureText1;
  bool? _obscureText2;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    _obscureText1 = true;
    _obscureText2 = true;
  }

  onSubmit() {
    if (_emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter email'),
        ),
      );
    } else if (_passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter password'),
        ),
      );
    } else if (_confirmPasswordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter confirm password'),
        ),
      );
    } else if (_nameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter name'),
        ),
      );
    } else if (_phoneController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter phone number'),
        ),
      );
    } else if (_passwordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password and confirm password does not match'),
        ),
      );
    } else {
      auth
          .createUserWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .then((value) => {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('User created successfully'),
                  ),
                ),
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login())),
              });
      auth.currentUser?.updateDisplayName(_nameController.text);

      auth.currentUser?.updatePhoneNumber(_phoneController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Register in to get started\nExperience the all new App!',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF6e6e6e),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Color(0xFF6e6e6e),
                  ),
                  hintText: 'Name',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                height: 2,
                color: const Color(0xFF6e6e6e),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Color(0xFF6e6e6e),
                  ),
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                height: 2,
                color: const Color(0xFF6e6e6e),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Color(0xFF6e6e6e),
                  ),
                  hintText: 'Mobile Number',
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                height: 2,
                color: const Color(0xFF6e6e6e),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: _obscureText1!,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xFF6e6e6e),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText1 = !_obscureText1!;
                        });
                      },
                      icon: _obscureText1!
                          ? const Icon(
                              Icons.visibility_off,
                              color: Color(0xFF6e6e6e),
                            )
                          : const Icon(
                              Icons.visibility,
                              color: Color(0xFF6e6e6e),
                            )),
                  hintText: 'Password',
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                height: 2,
                color: const Color(0xFF6e6e6e),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: _obscureText2!,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock, color: Color(0xFF6e6e6e)),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText2 = !_obscureText2!;
                        });
                      },
                      icon: _obscureText2!
                          ? const Icon(Icons.visibility_off,
                              color: Color(0xFF6e6e6e))
                          : const Icon(Icons.visibility,
                              color: Color(0xFF6e6e6e))),
                  hintText: 'Confirm password',
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                ),
              ),
              Container(
                width: w * 0.85,
                height: 2,
                color: const Color(0xFF6e6e6e),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFf3aa4e),
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    onSubmit();
                  },
                  child: Container(
                      width: .8 * w,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ))),
              const SizedBox(
                height: 20,
              ),
              //already have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF6e6e6e),
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

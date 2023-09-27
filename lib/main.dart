import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      height: 50,
                      width: 50,
                      image: AssetImage('assets/img.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Maintenance',
                          style: TextStyle(fontSize: 24),
                        ),
                        Text(
                          'Box',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Center(
                    child: Text('Login',
                        style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'Pacifico',
                          color: Colors.red,
                        ))),
                const SizedBox(
                  height: 5,
                ),
                const Center(
                    child: Text('if you already have an account click login',
                        style: TextStyle(
                          fontSize: 10,
                        ))),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(

                      hintText: 'Email',
                      labelText: 'Email',
                      fillColor: const Color(0xffF8F9A),
                      filled: true,
                      prefixIcon: const Icon(Icons.email,color: Color(0xff323F4B),),
                        enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffE4E7EB)),
              borderRadius: BorderRadius.circular(10)
          ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey,width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red,width: 2),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',

                        fillColor: const Color(0xffF8F9A),
                        filled: true,
                        prefixIcon: const Icon(Icons.lock_open,color: Color(0xff323F4B),),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey,width: 2),
                          borderRadius: BorderRadius.circular(10)
                        ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                ),
                const SizedBox(height:5,),

                Container(
                  child: const Text(
                    'forget password ?',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 16,color: Colors.blue,),
                  ),
                ),
                const SizedBox(height: 150,),
                Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(
                      color: const Color(0xff3348B4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text('Login',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                    )),
              const SizedBox(height: 10),
               const Row(
                 mainAxisAlignment:MainAxisAlignment.center,
                  children:  [
                      Text(
                        'Do not have an account?',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14),
                      ),
                    Text(
                      ' Sign up',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16,color: Colors.deepOrange),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

}

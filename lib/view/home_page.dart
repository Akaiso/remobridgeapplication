import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final locationController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Get.snackbar("Application sent; Our support team will reach out to you.",'',
        backgroundColor: Colors.blue,
        colorText: Colors.white,
        padding: EdgeInsets.only(top: 30, left: 5),
        duration: Duration(seconds: 5),
        icon: Icon(Icons.check_circle,color: Colors.white,)
      );
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(
      //     backgroundColor: Colors.blueAccent,
      //     content: Text(
      //       "Thank you for your application. Our support team will reach out to you.",
      //       style: TextStyle(color: Colors.white),
      //     ),
      //   ),
      // );

      // Clear form (optional)
      nameController.clear();
      emailController.clear();
      phoneController.clear();
      locationController.clear();
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Remobridge", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),),
       centerTitle: true,
       // backgroundColor: Colors.redAccent,
       //  actions: [
       //    InkWell(onTap: (){Get.toNamed('/qrcode');}, child: const Text("Scan QR code", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w700),),),
       //    const SizedBox(width: 30,),
       //  ],
      ),
      body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            children: [
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Important!\n\n",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text:
                      "We’re a passionate team on a mission to empower Nigerians with in-demand tech skills and help you land your ",
                    ),
                    TextSpan(
                      text: "first remote job — within your first month.\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    TextSpan(
                      text:
                      "Whether you’re ready to learn and do the work, or you’d prefer us to handle it for you, we’ve got you covered. ",
                    ),
                    TextSpan(
                      text:
                      "We can even build a professional profile for you, match you with remote jobs, and once you start earning — ",
                    ),
                    TextSpan(
                      text: "we’ll do the work, you pay us.\n\n",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.redAccent),
                    ),
                    TextSpan(
                      text: "💼 Ready to get started?\n",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                      "Fill out the form below to join our community of remote workers and gain access to exclusive resources, job opportunities, and ",
                    ),
                    TextSpan(
                      text: "relentless support from the Remobridge team. 💪",
                      style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold),
                    ),
                  ],
                  style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      _buildTextField(nameController, "Full Name", Icons.person, null),
                      _buildTextField(emailController, "Email Address", Icons.email,null,
                          keyboardType: TextInputType.emailAddress),
                      _buildTextField(phoneController, "Whatsapp Phone Number", Icons.phone,Colors.green,
                          keyboardType: TextInputType.phone),
                      _buildTextField(locationController, "Location / Province",
                          Icons.location_on, null),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _submitForm,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red, // primary color
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text("Submit",
                            style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ),

                      const SizedBox(height: 40,),
                       const Text("Scan QR code to this page", style: TextStyle(fontWeight: FontWeight.w600),),
                      const SizedBox(height: 20,),
                      Container(height: 200,width: 200,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                       // border: BorderSide.sol
                        ),
                        child: QrImageView(data:'https://remobridgeapplication.vercel.app',  ),
                      ),
                      const SizedBox(height: 50,),
                      const Text("Building bridges to remote opportunities", style: TextStyle(color: Colors.blue),),
                      const SizedBox(height: 5,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String labelText,
      IconData icon, Color? color, {TextInputType keyboardType = TextInputType.text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        validator: (value) =>
        value == null || value.isEmpty ? 'This field is required' : null,
        decoration: InputDecoration(
          prefixIcon:
          //MediaQuery.of(context).size.width < 600? Image.asset("assets/images/whatsapp.png") :
          Icon(icon, color: Colors.blue),
          labelText: labelText,
          labelStyle:  TextStyle(color: color ?? Colors.black87  ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueAccent),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

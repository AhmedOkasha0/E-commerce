import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/contac_us/cubit/contatct_state.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactCubit extends Cubit<ContactUsState> {
  ContactCubit() : super(ContactUsInitial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  void sendEmail({required String name,required String email, required String subject,required String content}) async {
    // Encode the parameters to ensure special characters are handled correctly
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'samehalbadry99@gmail.com', // Replace with your email
      query: 'subject=$subject&body=From: $name\nEmail: $email\n\n$content',
    );

    print(emailLaunchUri.toString());
    await launchUrl(Uri.parse(emailLaunchUri.toString()));

  }
 
}

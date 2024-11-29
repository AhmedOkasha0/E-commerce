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

  void sendEmail(String name, String content) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'fankyfanky100@gmail.com', // Replace with your email
      query: 'subject=Message from $name&body=$content', // Add subject and body
    );
    print(emailLaunchUri.toString());

    // Launch the email client
    await launchUrl(Uri.parse(emailLaunchUri.toString()));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/features/contac_us/cubit/contatct_state.dart';

class ContactCubit extends Cubit<ContactUsState> {
  ContactCubit() : super(ContactUsInitial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
}

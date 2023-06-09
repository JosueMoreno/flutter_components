import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Fernando',
      'last_name': 'Herrera',
      'email': 'fernando@google.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 11,
          ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: "Nombre",
                  hintText: "Nombre del usuario",
                  formProperty: "first_name",
                  formValues: formValues,
                ),
                const SizedBox(height: 22),
                CustomTextFormField(
                  labelText: "Apellido",
                  hintText: "Apellido del usuario",
                  formProperty: "last_name",
                  formValues: formValues,
                ),
                const SizedBox(height: 22),
                CustomTextFormField(
                  labelText: "Correo",
                  hintText: "Correo del usuario",
                  keyboardType: TextInputType.emailAddress,
                  formProperty: "email",
                  formValues: formValues,
                ),
                const SizedBox(height: 22),
                CustomTextFormField(
                  labelText: "Contraseña",
                  hintText: "Contraseña del usuario",
                  obscureText: true,
                  formProperty: "password",
                  formValues: formValues,
                ),
                const SizedBox(height: 22),
                DropdownButtonFormField<String>(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'SuperUser',
                      child: Text('SuperUser'),
                    ),
                    DropdownMenuItem(
                      value: 'Sr. Developer',
                      child: Text('Sr. Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Jr. Developer',
                      child: Text('Jr. Developer'),
                    ),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'None';
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Este campo es requerido';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 13),
                ElevatedButton(
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (!myFormKey.currentState!.validate()) {
                      return;
                    } else {
                      print(formValues);
                    }
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Guardar'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';
import '../../application/ui/widgets/custom_text_field.dart';

import '../../application/ui/widgets/submit_button.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstProductEC = TextEditingController();
    final TextEditingController secondProductEC = TextEditingController();
    final TextEditingController firstPriceEC = TextEditingController();
    final TextEditingController secondPriceEC = TextEditingController();
    final TextEditingController firstQuantityEC = TextEditingController();
    final TextEditingController secondQuantityEC = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("\$ Comparador de Preço \$"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(Icons.monetization_on,
                  size: 150.0, color: Colors.amber),
              const SizedBox(height: 20),
              Row(
                children: [
                  Flexible(
                    child: CustomTextField(
                      inputType: TextInputType.text,
                      hintText: 'Produto 1',
                      controller: firstProductEC,
                      validator: Validatorless.multiple([
                        Validatorless.required('Produto obrigatório'),
                      ]),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: CustomTextField(
                      inputType: TextInputType.text,
                      hintText: 'Produto 2',
                      controller: secondProductEC,
                      validator: Validatorless.multiple([
                        Validatorless.required('Produto obrigatório'),
                      ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Flexible(
                    child: CustomTextField(
                      inputType: TextInputType.number,
                      hintText: 'Preço 1',
                      controller: firstPriceEC,
                      validator: Validatorless.multiple([
                        Validatorless.required('Preço obrigatório'),
                      ]),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: CustomTextField(
                      inputType: TextInputType.number,
                      hintText: 'Preço 2',
                      controller: secondPriceEC,
                      validator: Validatorless.multiple([
                        Validatorless.required('Preço obrigatório'),
                      ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Flexible(
                    child: CustomTextField(
                      inputType: TextInputType.number,
                      hintText: 'Quantidade 1',
                      controller: firstQuantityEC,
                      validator: Validatorless.multiple([
                        Validatorless.required('Quantidade obrigatório'),
                      ]),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: CustomTextField(
                      inputType: TextInputType.number,
                      hintText: 'Quantidade 2',
                      controller: secondQuantityEC,
                      validator: Validatorless.multiple([
                        Validatorless.required('Quantidade obrigatório'),
                      ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              SubmitButton(
                onPress: () {
                  if (_formKey.currentState!.validate()) {
                    controller.comparePrice(
                      firstProduct: firstProductEC.text,
                      secondProduct: secondProductEC.text,
                      firstPrice: double.parse(firstPriceEC.text),
                      secondPrice: double.parse(secondPriceEC.text),
                      firstQuantity: double.parse(firstQuantityEC.text),
                      secondQuantity: double.parse(secondQuantityEC.text),
                    );
                  }
                },
                text: 'Comparar Preços',
              ),
              const SizedBox(height: 15),
              Obx(
                () => Center(
                  child: Text(
                    controller.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

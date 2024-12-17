import 'package:enigma/src/core/styles/theme/app_theme.dart';
import 'package:enigma/src/core/utils/extension/context_extension.dart';
import 'package:enigma/src/core/utils/validators/validators.dart';
import 'package:enigma/src/features/auth/presentation/signup/view_model/signup_controller.dart';
import 'package:enigma/src/features/home/presentation/view/home_screen.dart';
import 'package:enigma/src/shared/widgets/custom_form_field.dart';
import 'package:enigma/src/shared/widgets/shared_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/router/router.dart';

class SignupScreen extends ConsumerWidget {
  SignupScreen({super.key});

  static const route = '/signup';

  static setRoute() => '/signup';

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  ValueNotifier<String> selectedDay = ValueNotifier<String>("1");
  ValueNotifier<String> selectedMonth = ValueNotifier<String>("January");
  ValueNotifier<String> selectedYear = ValueNotifier<String>("2024");
  ValueNotifier<String> selectedValue = ValueNotifier<String>("Gaming PC");
  ValueNotifier<bool> discountAndSales = ValueNotifier<bool>(false);
  ValueNotifier<bool> newStuff = ValueNotifier<bool>(false);
  ValueNotifier<bool> yourExclusives = ValueNotifier<bool>(false);
  ValueNotifier<bool> appPartners = ValueNotifier<bool>(false);
  final List<String> days =
      List.generate(31, (index) => (index + 1).toString());
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  final List<String> years =
      List.generate(100, (index) => (2024 - index).toString());

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupController = ref.watch(signUpProvider);
    return Scaffold(
      appBar: SharedAppbar(
        title: const Text("Sign up"),
        leadingWidget: GestureDetector(
          child: const Icon(Icons.navigate_before),
          onTap: () {
            ref.read(goRouterProvider).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email address",
                  style: context.titleMedium?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFormField(
                    controller: emailController,
                    hintText: "Enter email address",
                    validator: Validators.emailValidator),
                Text(
                  "We'll send your order confirmation here",
                  style: context.bodySmall?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "First name",
                  style: context.titleMedium?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFormField(
                    controller: firstNameController,
                    hintText: "Enter first name",
                    validator: Validators.validator),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Last name",
                  style: context.titleMedium?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFormField(
                    controller: lastNameController,
                    hintText: "Enter last name",
                    validator: Validators.validator),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Password",
                  style: context.titleMedium?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomFormField(
                    controller: passwordController,
                    hintText: "Enter password",
                    validator: Validators.passwordValidator),
                Text(
                  "Must be 10 or more characters",
                  style: context.bodySmall?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Date of birth",
                  style: context.titleMedium?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ValueListenableBuilder(
                      builder: (context, value, child) {
                        return Expanded(
                          child: DropdownButtonFormField<String>(
                            hint: const Text('DD'),
                            value: selectedDay.value,
                            style: context.bodySmall?.copyWith(
                              color: Colors.grey,
                            ),
                            iconDisabledColor: Colors.grey,
                            iconEnabledColor: Colors.grey,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 2.0),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              border: const OutlineInputBorder(),
                            ),
                            dropdownColor: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            items: days.map((String day) {
                              return DropdownMenuItem<String>(
                                value: day,
                                child: Text(day),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              selectedDay.value = value ?? "";
                            },
                          ),
                        );
                      },
                      valueListenable: selectedDay,
                    ),
                    const SizedBox(width: 10),
                    ValueListenableBuilder(
                      builder: (context, value, child) {
                        return Expanded(
                          child: DropdownButtonFormField<String>(
                            hint: const Text('Month'),
                            value: selectedMonth.value,
                            style: context.bodySmall?.copyWith(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            dropdownColor: Colors.white,
                            iconDisabledColor: Colors.grey,
                            iconEnabledColor: Colors.grey,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 2.0),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              border: const OutlineInputBorder(),
                            ),
                            items: months.map((String month) {
                              return DropdownMenuItem<String>(
                                value: month,
                                child: Text(month),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              selectedMonth.value = value ?? "";
                            },
                          ),
                        );
                      },
                      valueListenable: selectedMonth,
                    ),
                    const SizedBox(width: 10),
                    ValueListenableBuilder(
                      builder: (context, value, child) {
                        return Expanded(
                          child: DropdownButtonFormField<String>(
                            hint: const Text('YYYY'),
                            style: context.bodySmall?.copyWith(
                              color: Colors.grey,
                            ),
                            iconDisabledColor: Colors.grey,
                            iconEnabledColor: Colors.grey,
                            dropdownColor: Colors.white,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 2.0),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              border: const OutlineInputBorder(),
                            ),
                            value: selectedYear.value,
                            items: years.map((String year) {
                              return DropdownMenuItem<String>(
                                value: year,
                                child: Text(year),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              selectedYear.value = value ?? "";
                            },
                          ),
                        );
                      },
                      valueListenable: selectedYear,
                    ),
                  ],
                ),
                Text(
                  "You need to be 16 or over to buy",
                  style: context.bodySmall?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Mostly interested in (optional)",
                  style: context.titleMedium?.copyWith(color: Colors.grey),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8.0), // Change border radius here
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          ValueListenableBuilder(
                            builder: (context, value, child) {
                              return Radio<String>(
                                activeColor: lightTheme.primaryColor,
                                value: "Gaming PC",
                                groupValue: selectedValue.value,
                                onChanged: (value) {
                                  selectedValue.value = value ?? "";
                                },
                              );
                            },
                            valueListenable: selectedValue,
                          ),
                          Text(
                            "Gaming PC",
                            style: context.titleMedium
                                ?.copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ValueListenableBuilder(
                            builder: (context, value, child) {
                              return Radio<String>(
                                activeColor: lightTheme.primaryColor,
                                value: "Gaming Console",
                                groupValue: selectedValue.value,
                                onChanged: (value) {
                                  selectedValue.value = value ?? "";
                                },
                              );
                            },
                            valueListenable: selectedValue,
                          ),
                          Text(
                            "Gaming Console",
                            style: context.titleMedium
                                ?.copyWith(color: Colors.black),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8.0), // Change border radius here
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Contact prefested in",
                              style: context.titleMedium
                                  ?.copyWith(color: Colors.black),
                            ),
                            const Icon(
                              Icons.cancel_outlined,
                              color: Colors.red,
                            )
                          ],
                        ),
                        Text(
                          "Tell us which email you'd like",
                          style:
                              context.titleSmall?.copyWith(color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Discount and sales",
                              style: context.titleMedium
                                  ?.copyWith(color: Colors.black),
                            ),
                            ValueListenableBuilder(
                              builder: (context, value, child) {
                                return Checkbox(
                                  side: const BorderSide(color: Colors.grey),
                                  value: discountAndSales.value,
                                  onChanged: (bool? value) {
                                    discountAndSales.value =
                                        value ?? false; // Update checkbox state
                                  },
                                  activeColor: lightTheme.primaryColor,
                                  // Color when checked
                                  checkColor: Colors.white, // Checkmark color
                                );
                              },
                              valueListenable: discountAndSales,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "New stuff",
                              style: context.titleMedium
                                  ?.copyWith(color: Colors.black),
                            ),
                            ValueListenableBuilder(
                              builder: (context, value, child) {
                                return Checkbox(
                                  side: const BorderSide(color: Colors.grey),
                                  value: newStuff.value,
                                  onChanged: (bool? value) {
                                    newStuff.value =
                                        value ?? false; // Update checkbox state
                                  },
                                  activeColor: lightTheme.primaryColor,
                                  // Color when checked
                                  checkColor: Colors.white, // Checkmark color
                                );
                              },
                              valueListenable: newStuff,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Your exclusive",
                              style: context.titleMedium
                                  ?.copyWith(color: Colors.black),
                            ),
                            ValueListenableBuilder(
                              builder: (context, value, child) {
                                return Checkbox(
                                  side: const BorderSide(color: Colors.grey),
                                  value: yourExclusives.value,
                                  onChanged: (bool? value) {
                                    yourExclusives.value =
                                        value ?? false; // Update checkbox state
                                  },
                                  activeColor: lightTheme.primaryColor,
                                  // Color when checked
                                  checkColor: Colors.white, // Checkmark color
                                );
                              },
                              valueListenable: yourExclusives,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "App partners",
                              style: context.titleMedium
                                  ?.copyWith(color: Colors.black),
                            ),
                            ValueListenableBuilder(
                              builder: (context, value, child) {
                                return Checkbox(
                                  side: const BorderSide(color: Colors.grey),
                                  value: appPartners.value,
                                  onChanged: (bool? value) {
                                    appPartners.value =
                                        value ?? false; // Update checkbox state
                                  },
                                  activeColor: lightTheme.primaryColor,
                                  // Color when checked
                                  checkColor: Colors.white, // Checkmark color
                                );
                              },
                              valueListenable: appPartners,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: context.width,
                  child: ElevatedButton(
                      onPressed: () {
                        ref.read(goRouterProvider).go(HomeScreen.route);
                      },
                      child: const Text("Sign up")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

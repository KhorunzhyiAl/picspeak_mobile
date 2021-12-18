import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picspeak/features/auth/presentation/log_in_form/widgets/log_in_fields_widget.dart';

class LogInFormScreen extends StatelessWidget {
  const LogInFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: theme.colorScheme.background,
          height: size.height > 600 ? size.height : 600,
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Image.asset(
                'assets/images/blue_pattern.jpg',
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
              Container(
                color: Colors.black.withOpacity(0.1),
              ),
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                bottom: 450,
                child: Center(
                  child: Text(
                    'Picspeak',
                    style: theme.textTheme.headline1?.copyWith(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    height: 450,
                    width: size.width > 500 ? 500 : size.width,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.background,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15,
                      ),
                      child: LogInFieldsWidget(),
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

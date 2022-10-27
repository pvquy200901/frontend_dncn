part of '../login_page.dart';

class _LoginSignIn extends StatefulWidget {
  const _LoginSignIn({
    Key? key,
  }) : super(key: key);

  @override
  State<_LoginSignIn> createState() => __LoginSignInState();
}

class __LoginSignInState extends State<_LoginSignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.padding.biggestValue,
        ),
        child: Form(
          autovalidateMode: _autovalidateMode,
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                IntlUtil.translate('Đăng nhập'),
                style: AppTextStyles.h1().copyWith(
                  fontSize: 64.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: AppDimensions.padding.biggestValue,
              ),
              _LoginSocial(
                onFacebookPressed: context.showContentUnavailable,
                onGooglePressed: context.showContentUnavailable,
              ),
              
              SizedBox(
                height: AppDimensions.padding.bigValue,
              ),
              _buildEmailTextField(context),
              SizedBox(
                height: AppDimensions.padding.smallValue,
              ),
              _buildPasswordTextField(context),
              SizedBox(
                height: AppDimensions.padding.biggestValue,
              ),
              _buildSignInButton(context),
            ],
          ),
        ),
      );

  Widget _buildEmailTextField(BuildContext context) => Container(
        constraints: const BoxConstraints(
          maxWidth: 500.0,
        ),
        child: CustomTextField(
          initialText: IntlUtil.translate('abc'),
          labelText: IntlUtil.translate('Tên đăng nhập'),
          onChanged: (_) {},
          validator: ValidationBuilder().isNotBlank().build,
        ),
      );

  Widget _buildPasswordTextField(BuildContext context) => Container(
        constraints: const BoxConstraints(
          maxWidth: 500.0,
        ),
        child: CustomTextField(
          initialText: IntlUtil.translate('123456'),
          labelText: IntlUtil.translate('Mật khẩu'),
          obscureText: true,
          validator: ValidationBuilder().isNotBlank().build,
        ),
      );

  Widget _buildSignInButton(BuildContext context) => Container(
        constraints: const BoxConstraints(
          maxWidth: 250.0,
        ),
        child: CustomButton(
          onPressed: () {
            setState(() {
              _autovalidateMode = AutovalidateMode.always;
            });
            if (_formKey.currentState?.validate() ?? false) {
              context.replaceRoute(const ProjectsRoute());
            }
          },
          decoration: AppDecorations.button.primary(),
          child: Text(
            IntlUtil.translate('Đăng nhập'),
            style: AppTextStyles.button.primary(),
          ),
        ),
      );
}

extension ContextExtensions on BuildContext {
  void showContentUnavailable() =>
      AlertDialogFactory.showContentUnavailable(this);
}





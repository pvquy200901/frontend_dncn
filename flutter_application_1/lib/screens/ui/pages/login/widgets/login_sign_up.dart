part of '../login_page.dart';

class _LoginSignUp extends StatelessWidget {
  const _LoginSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppDimensions.padding.biggestValue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              IntlUtil.translate('Đăng kí tài khoản'),
              overflow: TextOverflow.clip,
              style: AppTextStyles.h1().copyWith(
                fontSize: 64.0,
              ),
              textAlign: TextAlign.center,
            ),
            // SizedBox(
            //   height: AppDimensions.padding.biggestValue,
            // ),
            // _LoginSocial(
            //   onFacebookPressed: context.showContentUnavailable,
            //   onGooglePressed: context.showContentUnavailable,
            // ),
            // SizedBox(
            //   height: AppDimensions.padding.biggestValue,
            // ),
            
            SizedBox(
              height: AppDimensions.padding.bigValue,
            ),
            _buildNameTextField(context),
            SizedBox(
              height: AppDimensions.padding.smallValue,
            ),
            _buildEmailTextField(context),
            SizedBox(
              height: AppDimensions.padding.smallValue,
            ),
            _buildPasswordTextField(context),
            SizedBox(
              height: AppDimensions.padding.biggestValue,
            ),
            _buildSignUpButton(context),
          ],
        ),
      );

  Widget _buildNameTextField(BuildContext context) => Container(
        constraints: const BoxConstraints(
          maxWidth: 500.0,
        ),
        child: CustomTextField(
          labelText: IntlUtil.translate('Họ tên '),
        ),
      );

  Widget _buildEmailTextField(BuildContext context) => Container(
        constraints: const BoxConstraints(
          maxWidth: 500.0,
        ),
        child: CustomTextField(
          labelText: IntlUtil.translate('Tên đăng nhập '),
        ),
      );

  Widget _buildPasswordTextField(BuildContext context) => Container(
        constraints: const BoxConstraints(
          maxWidth: 500.0,
        ),
        child: CustomTextField(
          obscureText: true,
          labelText: IntlUtil.translate('Mật khẩu'),
        ),
      );

  Widget _buildSignUpButton(BuildContext context) => Container(
        constraints: const BoxConstraints(
          maxWidth: 250.0,
        ),
        child: CustomButton(
          onPressed: context.showContentUnavailable,
          decoration: AppDecorations.button.primary(),
          child: Text(
            IntlUtil.translate('Đăng kí'),
            style: AppTextStyles.button.primary(),
          ),
        ),
      );
}

part of '../login_page.dart';

class _LoginBackground extends StatelessWidget {
  const _LoginBackground({
    required this.onSignInPressed,
    required this.onSignUpPressed,
    Key? key,
  }) : super(key: key);

  final VoidCallback onSignInPressed;
  final VoidCallback onSignUpPressed;

  @override
  Widget build(BuildContext context) => Container(
        color: AppColors.black,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _LoginInfo(
                content: IntlUtil.translate(
                  // ignore: lines_longer_than_80_chars
                  'Đăng nhập để cùng nhau xây dựng đội bóng của bạn',
                ),
                label: IntlUtil.translate('Đăng nhập'),
                onPressed: onSignInPressed,
                title: IntlUtil.translate('Welcome Back!'),
              ),
            ),
            Expanded(
              child: _LoginInfo(
                content: IntlUtil.translate(
                  'Đăng kí ngay để tham gia cùng chúng tôi',
                ),
                label: IntlUtil.translate('Đăng kí'),
                onPressed: onSignUpPressed,
                title: IntlUtil.translate('Hello, Friend!'),
              ),
            ),
          ],
        ),
      );
}

class IntlUtil {
  const IntlUtil._();

  static String translate(String text) => text;
}

import 'package:flutter/material.dart';
import 'package:my_messenger/app/theme/app_colors.dart';
import 'package:my_messenger/core/tweens/double_tween.dart';
import 'package:my_messenger/features/profile/presentation/ui/widgets/profile_avatar.dart';

class ProfileSliverAppBar extends SliverPersistentHeaderDelegate {
  final String username;

  ProfileSliverAppBar({required this.username});

  final _avatarAlignTween =
      AlignmentTween(begin: Alignment.bottomCenter, end: Alignment.topCenter);

  final _titleMarginTween = EdgeInsetsTween(
    begin: const EdgeInsets.only(bottom: 10),
    end: const EdgeInsets.only(top: 45),
  );
  final _avatarOpacityTween = DoubleTween(begin: 1.0, end: 0.0);
  final _backgroundTween =
      ColorTween(begin: AppColors.background, end: Colors.white);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final tempVal = maxExtent * 72 / 100;
    final progress = shrinkOffset > tempVal ? 1.0 : shrinkOffset / tempVal;
    final titleMargin = _titleMarginTween.lerp(progress);
    final avatarAlign = _avatarAlignTween.lerp(progress);
    final backgroundColor = _backgroundTween.lerp(progress);
    final avatarOpacity = _avatarOpacityTween.lerp(progress);
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          height: 80,
          constraints: BoxConstraints(maxHeight: minExtent),
          color: backgroundColor,
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 100),
          opacity: avatarOpacity,
          child: const Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 80,
              width: 80,
              child: ProfileAvatar(
                name: 'vastellorde',
              ),
            ),
          ),
        ),
        Padding(
          padding: titleMargin,
          child: Align(
            alignment: avatarAlign,
            child: const Text(
              'vastellorde',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 24 / 16,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 160;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(covariant ProfileSliverAppBar oldDelegate) =>
      username != oldDelegate.username;
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_messenger/app/theme/app_colors.dart';
import 'dart:math' as math;

@RoutePage()
class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.black,
          ),
          onPressed: () {
            context.popRoute();
          },
        ),
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              'Some guy',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 24 / 16,
                color: AppColors.black,
              ),
            ),
            Text(
              'Online',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 21 / 14,
                color: AppColors.gray,
              ),
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList.builder(
            itemBuilder: (context, index) {
              return Text(index.toString());
            },
            itemCount: 100,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 72,
        decoration: const BoxDecoration(color: Colors.white),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        width: MediaQuery.sizeOf(context).width,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Type your message...',
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,
                color: AppColors.gray,
              ),
            ),
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: AppColors.gray,
              ),
            ),
            fillColor: AppColors.background,
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  width: 1,
                  color: AppColors.background,
                  style: BorderStyle.none),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  width: 0,
                  color: AppColors.background,
                  style: BorderStyle.none),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  width: 0,
                  color: AppColors.background,
                  style: BorderStyle.none),
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.background,
    );
  }
}

class BottomPersistentDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  BottomPersistentDelegate({required this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 76;

  @override
  double get minExtent => 76;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

class SliverFooter extends SingleChildRenderObjectWidget {
  const SliverFooter({super.key, super.child});

  @override
  RenderObject createRenderObject(BuildContext context) => RenderSliverFooter();
}

class RenderSliverFooter extends RenderSliverSingleBoxAdapter {
  @override
  void performLayout() {
    final extent =
        constraints.remainingPaintExtent - math.min(constraints.overlap, 0.0);
    double childGrowthSize = .0; // added
    if (child != null) {
      // changed maxExtent from 'extent' to double.infinity
      child!.layout(
        constraints.asBoxConstraints(minExtent: extent),
        parentUsesSize: true,
      );
      childGrowthSize = constraints.axis == Axis.vertical
          ? child!.size.height
          : child!.size.width; // added
    }
    final paintedChildSize =
        calculatePaintOffset(constraints, from: 0.0, to: extent);
    assert(
        paintedChildSize.isFinite,
        'The calculated paintedChildSize '
        '$paintedChildSize for child $child is not finite.');
    assert(
        paintedChildSize >= 0.0,
        'The calculated paintedChildSize was '
        '$paintedChildSize but is not greater than or equal to zero. '
        'This can happen if the child is too big in which case it '
        'should be sized down or if the SliverConstraints.scrollOffset '
        'was not correct.');
    geometry = SliverGeometry(
      // used to be this : scrollExtent: constraints.viewportMainAxisExtent,
      scrollExtent: math.max(extent, childGrowthSize),
      paintExtent: paintedChildSize,
      maxPaintExtent: paintedChildSize,
      hasVisualOverflow: extent > constraints.remainingPaintExtent ||
          constraints.scrollOffset > 0.0,
    );
    if (child != null) {
      setChildParentData(child!, constraints, geometry!);
    }
  }
}

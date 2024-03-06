import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:itsp/features/2/presentation/blocs/carousel_with_main_image/carousel_with_main_image_cubit.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CarouselWithMainImage extends StatelessWidget {
  const CarouselWithMainImage({required this.imgList, super.key});
  final List imgList;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarouselWithMainImageCubit(),
      child:
          BlocBuilder<CarouselWithMainImageCubit, CarouselWithMainImageState>(
        builder: (context, state) {
          final CarouselWithMainImageCubit cubit =
              CarouselWithMainImageCubit.getInstance(context);
          final ScrollController controller = ScrollController();
          return Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  child: Image.asset(
                    imgList[cubit.imdIndex],
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Gap(16),
              Row(
                children: [
                  if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
                    Spacer(),
                  Flexible(
                    flex: 3,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: InfiniteCarousel.builder(
                        itemCount: imgList.length,
                        controller: controller,
                        onIndexChanged: cubit.changeMainImage,
                        itemExtent:
                            MediaQuery.of(context).size.height * 0.1 + 16,
                        itemBuilder: (BuildContext context, int itemIndex,
                            int realIndex) {
                          return AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12)),
                              child: GestureDetector(
                                onTap: () => cubit.changeMainImage(itemIndex),
                                child: Image.asset(
                                  imgList[itemIndex],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
                    Spacer(),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

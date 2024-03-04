import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:itsp/features/2/presentation/blocs/carousel_with_main_image/carousel_with_main_image_cubit.dart';

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
              final  ScrollController controller=ScrollController();
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: InfiniteCarousel.builder(
                  itemCount: imgList.length,
                  controller: controller,
                  onIndexChanged: cubit.changeMainImage,
                  itemExtent: MediaQuery.of(context).size.width * 0.3,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int realIndex) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: GestureDetector(
                        onTap: () => cubit.changeMainImage(itemIndex),
                        child: Image.asset(
                          imgList[itemIndex],
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

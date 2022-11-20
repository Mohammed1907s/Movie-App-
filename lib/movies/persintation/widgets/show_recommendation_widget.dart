import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_arch/core/utils/enums.dart';
import 'package:clean_arch/movies/persintation/controller/movie_details_bloc.dart';
import 'package:clean_arch/movies/persintation/screens/movie_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/network/api_constant.dart';
import '../controller/movie_details_state.dart';

class ShowRecommendations extends StatelessWidget {
  const ShowRecommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc,MovieDetailsState>(
      builder: (context, state) {
        switch (state.recommendationState) {
          case RequestState.loading:
            return const SizedBox(
                height: 170, child: Center(child: CircularProgressIndicator()));
          case RequestState.loaded:
            return SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final recommendation = state.recommendation[index];
                  return FadeInUp(
                    from: 20,
                    duration: const Duration(milliseconds: 500),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>MovieDetailScreen(id: recommendation.id) ,));
                      },
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                        child: CachedNetworkImage(
                          imageUrl: ApiConstant.imageUrl(recommendation.backdropPath!),
                          placeholder: (context, url) => Shimmer.fromColors(
                            baseColor: Colors.grey[850]!,
                            highlightColor: Colors.grey[800]!,
                            child: Container(
                              height: 170.0,
                              width: 120.0,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                          height: 180.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                childCount:state.recommendation.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 0.7,
                crossAxisCount: 3,
              ),
            );
          case RequestState.error:
            return SizedBox(
              height: 170,
              child: Center(
                child: Text(state.recommendationMessage,style: TextStyle(color: Colors.white),),
              ),
            );
        }
      },





    );
  }
}
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:herpes_identification/data/model/news/article/article_model.dart';
import 'package:herpes_identification/injection.dart';
import 'package:herpes_identification/provider/article/article_bloc.dart';
import 'package:herpes_identification/ui/core/customLoadingImage/custom_loading_image.dart';

class HomeNewsSection extends StatelessWidget {
  const HomeNewsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArticleBloc>(
      create: (context) =>
          getIt<ArticleBloc>()..add(ArticleEvent.watch(context)),
      child: BlocBuilder<ArticleBloc, ArticleState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Berita Kesehatan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                state.optionFailureOrArticle.match(
                  (t) => t.fold(
                    (l) => const Text("Something went wrong"),
                    (articles) => listNews(articles),
                  ),
                  () => const CustomLoadingImage(),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget listNews(IList<ArticleModel> articles) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      itemCount: articles.length,
      padding: const EdgeInsets.only(top: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        final article = articles[index];
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(article.urlToImage),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    article.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

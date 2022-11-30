import 'package:flutter/material.dart';
import 'package:gutenberg/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DetailScreenGridView extends StatelessWidget {
  final BookModel? bookModel;
  const DetailScreenGridView({Key? key, required this.bookModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1 / 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 8,
            ),
            padding: const EdgeInsets.all(8.0),
            itemCount: bookModel!.results!.length,
            itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          height: 200,
                          child: CachedNetworkImage(
                            imageUrl:
                                bookModel!.results![index].formats!.imageJpeg ??
                                    "",
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                  colorFilter: const ColorFilter.mode(
                                    Colors.red,
                                    BlendMode.colorBurn,
                                  ),
                                ),
                              ),
                            ),
                            placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, bottom: 5.0, right: 10.0),
                      child: Text(
                        bookModel!.results![index].title ?? "",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )));
  }
}

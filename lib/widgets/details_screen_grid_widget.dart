import 'package:flutter/material.dart';
import 'package:gutenberg/constants/color_constants.dart';
import 'package:gutenberg/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gutenberg/screens/books_webview_screens.dart';
import 'package:gutenberg/widgets/search_widget.dart';

import '../helpers/color_from_hex.dart';
import '../helpers/create_routes.dart';
import 'wid_txt.dart';

// ignore: must_be_immutable
class DetailScreenGridView extends StatefulWidget {
  final BookModel? bookModel;
  String searchTxt = "";
  final List<Results> filterBookModel = [];
  DetailScreenGridView({
    Key? key,
    required this.bookModel,
  }) : super(key: key);

  @override
  State<DetailScreenGridView> createState() => _DetailScreenGridViewState();
}

class _DetailScreenGridViewState extends State<DetailScreenGridView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: SearchWidget(
              onChanged: (searchBook) {
                setState(() {
                  widget.searchTxt = searchBook;
                  _searchBooks(searchBook);
                });
              },
            ),
          ),
          widget.searchTxt.isEmpty
              ? Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1 / 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 8,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    itemCount: widget.bookModel!.results!.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          createRoute(BooksWebView(
                              booksWebViewUrl: widget.bookModel!.results![index]
                                  .formats!.textHtmlCharsetUtf8)),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SizedBox(
                                //height: 250,
                                child: CachedNetworkImage(
                                  imageUrl: widget.bookModel!.results![index]
                                          .formats!.imageJpeg ??
                                      "",
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
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
                            child: WidText(
                              title:
                                  widget.bookModel!.results![index].title ?? "",
                              fontFamily: 'Montserrat-Black',
                              widColor: parseColor(blackColor),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1 / 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 8,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    itemCount: widget.filterBookModel.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          createRoute(
                            BooksWebView(
                                booksWebViewUrl: widget.filterBookModel[index]
                                    .formats!.textHtmlCharsetUtf8),
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SizedBox(
                                height: 200,
                                child: CachedNetworkImage(
                                  imageUrl: widget.filterBookModel[index]
                                          .formats!.imageJpeg ??
                                      "",
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
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
                            child: WidText(
                              title: widget.filterBookModel[index].title ?? "",
                              fontFamily: 'Montserrat-Black',
                              widColor: parseColor(blackColor),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  void _searchBooks(String searchBook) async {
    widget.filterBookModel.clear();
    for (final item in widget.bookModel!.results!) {
      for (final aut in item.authors!) {
        if (aut.name!.toLowerCase().contains(searchBook.toLowerCase())) {
          widget.filterBookModel.add(item);
        }
      }
    }
  }
}

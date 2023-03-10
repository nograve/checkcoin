import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../cubit/selected_coin_cubit.dart';
import '../services/http_service.dart';
import '../views/details_view.dart';
import 'coin_image_widget.dart';
import 'current_price_widget.dart';
import 'description_card_widget.dart';
import 'percentage_change_widget.dart';

class DataWidgets extends StatelessWidget {
  DataWidgets({super.key});

  final http = GetIt.instance.get<HTTPService>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedCoinCubit, SelectedCoinState>(
      builder: (context, state) {
        return FutureBuilder(
          future: http.get('/coins/${state.selectedCoin}'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Map data = jsonDecode(
                snapshot.data.toString(),
              );
              num usdPrice = data['market_data']['current_price']['usd'];
              num change24h =
                  data['market_data']['price_change_percentage_24h'];
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onDoubleTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return DetailsView(
                                prices: data['market_data']['current_price']);
                          },
                        ),
                      );
                    },
                    child: CoinImageWidget(imageUrl: data['image']['large']),
                  ),
                  CurrentPriceWidget(rate: usdPrice),
                  PercentageChangeWidget(change: change24h),
                  DescriptionCardWidget(description: data['description']['en']),
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            }
          },
        );
      },
    );
  }
}

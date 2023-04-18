import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:offertelavoroflutter_app/constants/routes.dart';
import 'package:offertelavoroflutter_app/helpers/flash_message.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/error_indicator.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/no_item_found_indicator.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/favorite_hiring_job_offer_list/bloc/favorite_hiring_job_offer_list_bloc.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_item.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_item_skeleton.dart';

class FavoriteHiringJobOfferList extends StatelessWidget {
  const FavoriteHiringJobOfferList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteHiringJobOfferListBloc(hiringJobOfferRepository: RepositoryProvider.of<HiringJobOfferRepository>(context)),
      child: const _FavoriteHiringJobOfferListView(),
    );
  }
}

class _FavoriteHiringJobOfferListView extends StatefulWidget {
  const _FavoriteHiringJobOfferListView({Key? key}) : super(key: key);

  @override
  State<_FavoriteHiringJobOfferListView> createState() => _FavoriteHiringJobOfferListViewState();
}

class _FavoriteHiringJobOfferListViewState extends State<_FavoriteHiringJobOfferListView> {
  final PagingController<String?, HiringJobOffer> _pagingController = PagingController(firstPageKey: null);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<FavoriteHiringJobOfferListBloc>().add(FavoriteHiringJobOfferListEvent.pageRequested(pageKey));
    });
    super.initState();
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  refresh() {
    context.read<FavoriteHiringJobOfferListBloc>().add(const FavoriteHiringJobOfferListEvent.refreshRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoriteHiringJobOfferListBloc, FavoriteHiringJobOfferListState>(
      listener: (context, state) {
        _pagingController.value = state.pagingState;
      },
      builder: (context, state) => RefreshIndicator(
        onRefresh: () => Future.sync(refresh),
        child: PagedListView(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<HiringJobOffer>(
            itemBuilder: (context, item, index) => _buildItem(item, state),
            firstPageProgressIndicatorBuilder: (context) => _buildFirstPageProgressIndicator(),
            newPageProgressIndicatorBuilder: (context) => const HiringJobOfferItemSkeleton(),
            noItemsFoundIndicatorBuilder: (context) => const NoItemsFoundIndicator(),
            firstPageErrorIndicatorBuilder: (context) => ErrorIndicator(onRetry: refresh),
            newPageErrorIndicatorBuilder: (context) => ErrorIndicator(onRetry: refresh),
          )
        ),
      ),
    );
  }

  Widget _buildItem(HiringJobOffer hiringJobOffer, FavoriteHiringJobOfferListState state) {
    bool isFavorite = state.favoriteHiringJobOfferIds.contains(hiringJobOffer.id);
    return HiringJobOfferItem(
      hiringJobOffer: hiringJobOffer,
      onTap: () => Navigator.of(context).pushNamed(Routes.hiringJobOfferDetail, arguments: hiringJobOffer),
      isFavorite: isFavorite,
      onFavoriteTap: () {
        context.read<FavoriteHiringJobOfferListBloc>()
          .add(FavoriteHiringJobOfferListEvent.favoriteHiringJobOfferToggled(hiringJobOffer.id));

        FlashMessage.showToggleFavoriteJobOffer(!isFavorite, context);
      }
    );
  }

  Widget _buildFirstPageProgressIndicator() {
    return Column(
      children: const [
        HiringJobOfferItemSkeleton(),
        HiringJobOfferItemSkeleton(),
        HiringJobOfferItemSkeleton(),
        HiringJobOfferItemSkeleton(),
        HiringJobOfferItemSkeleton(),
        HiringJobOfferItemSkeleton(),
      ],
    );
  }
}


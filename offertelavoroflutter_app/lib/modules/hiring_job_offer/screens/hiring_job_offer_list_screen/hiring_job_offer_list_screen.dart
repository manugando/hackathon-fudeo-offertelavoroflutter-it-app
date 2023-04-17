import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:offertelavoroflutter_app/constants/routes.dart';
import 'package:offertelavoroflutter_app/helpers/styles.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/content_card.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/error_indicator.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/header_with_search.dart';
import 'package:offertelavoroflutter_app/modules/common/widgets/no_item_found_indicator.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer/hiring_job_offer.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/hiring_job_offer_filters/hiring_job_offer_filters.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/repositories/hiring_job_offer_repository.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/screens/hiring_job_offer_list_screen/bloc/hiring_job_offer_list_screen_bloc.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_filter_sheet/hiring_job_offer_filter_sheet.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_item.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_item_skeleton.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/widgets/hiring_job_offer_subscribe_newsletter_sheet.dart';

class HiringJobOfferListScreen extends StatelessWidget {
  const HiringJobOfferListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HiringJobOfferListScreenBloc(hiringJobOfferRepository: RepositoryProvider.of<HiringJobOfferRepository>(context)),
      child: const _HiringJobOfferView(),
    );
  }
}

class _HiringJobOfferView extends StatefulWidget {
  const _HiringJobOfferView({Key? key}) : super(key: key);

  @override
  State<_HiringJobOfferView> createState() => _HiringJobOfferViewState();
}

class _HiringJobOfferViewState extends State<_HiringJobOfferView> {
  final TextEditingController _searchFieldController = TextEditingController();
  final PagingController<String?, HiringJobOffer> _pagingController = PagingController(firstPageKey: null);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      context.read<HiringJobOfferListScreenBloc>().add(HiringJobOfferListScreenEvent.pageRequested(pageKey));
    });
    _searchFieldController.addListener(() {
      context.read<HiringJobOfferListScreenBloc>().add(HiringJobOfferListScreenEvent.searchQueryChanged(_searchFieldController.text));
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchFieldController.dispose();
    _pagingController.dispose();
    super.dispose();
  }

  showFiltersSheet(HiringJobOfferFilters initialFilters) async {
    HiringJobOfferFilters? filters = await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => HiringJobOfferFilterSheet(initialFilters: initialFilters),
    );
    
    if(filters == null) return;
    context.read<HiringJobOfferListScreenBloc>().add(HiringJobOfferListScreenEvent.filtersChanged(filters));
  }

  showSubscribeNewsletterSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => const HiringJobOfferSubscribeNewsletterSheet(),
    );
  }

  refresh() {
    context.read<HiringJobOfferListScreenBloc>().add(const HiringJobOfferListScreenEvent.refreshRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HiringJobOfferListScreenBloc, HiringJobOfferListScreenState>(
      listener: (context, state) {
        _pagingController.value = state.pagingState;
      },
      builder: (context, state) => Scaffold(
        backgroundColor: Styles.lightBackground,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              HeaderWithSearch(
                forceElevated: innerBoxIsScrolled,
                title: AppLocalizations.of(context)!.hiringJobOfferScreenTitle,
                switchListBtnTitle: AppLocalizations.of(context)!.hiringJobOfferScreenSwitch,
                searchController: _searchFieldController,
                onSwitchList: () {
                  // TODO
                },
                showActiveFiltersBadge: state.filters.active,
                onShowFilters: () => showFiltersSheet(state.filters),
              )
            ];
          },
          body: RefreshIndicator(
            onRefresh: () => Future.sync(refresh),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: _buildNewsletterCta(),
                  ),
                ),
                PagedSliverList(
                  pagingController: _pagingController,
                  builderDelegate: PagedChildBuilderDelegate<HiringJobOffer>(
                    itemBuilder: (context, item, index) => _buildItem(item, state),
                    firstPageProgressIndicatorBuilder: (context) => _buildFirstPageProgressIndicator(),
                    newPageProgressIndicatorBuilder: (context) => const HiringJobOfferItemSkeleton(),
                    noItemsFoundIndicatorBuilder: (context) => const NoItemsFoundIndicator(),
                    firstPageErrorIndicatorBuilder: (context) => ErrorIndicator(onRetry: refresh),
                    newPageErrorIndicatorBuilder: (context) => ErrorIndicator(onRetry: refresh),
                  )
                )
              ]
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNewsletterCta() {
    return ContentCard(
      onTap: showSubscribeNewsletterSheet,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      color: Styles.primaryDark.withAlpha(20),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/bell.svg'),
          const SizedBox(width: 15),
          Expanded(child: Text('Resta aggiornato sugli ultimi annunci pubblicati', style: Theme.of(context).textTheme.bodySmall)),
          SvgPicture.asset('assets/icons/chevron-right.svg'),
        ],
      ),
    );
  }

  Widget _buildItem(HiringJobOffer hiringJobOffer, HiringJobOfferListScreenState state) {
    bool isFavorite = state.favoriteHiringJobOfferIds.contains(hiringJobOffer.id);
    return HiringJobOfferItem(
      hiringJobOffer: hiringJobOffer,
      onTap: () => Navigator.of(context).pushNamed(Routes.hiringJobOfferDetail, arguments: hiringJobOffer),
      isFavorite: isFavorite,
      onFavoriteTap: () {
        context.read<HiringJobOfferListScreenBloc>()
          .add(HiringJobOfferListScreenEvent.favoriteHiringJobOfferToggled(hiringJobOffer.id));

        SnackBar snackBar = SnackBar(
          content: Text(isFavorite ? AppLocalizations.of(context)!.jobOfferRemovedFromFavorites : AppLocalizations.of(context)!.jobOfferAddedToFavorites,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary)
          )
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
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



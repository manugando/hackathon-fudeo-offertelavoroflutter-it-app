import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/common/models/rich_text/rich_text.dart';
import 'package:offertelavoroflutter_app/modules/common/models/select_option/select_option.dart';
import 'package:offertelavoroflutter_app/modules/hiring_job_offer/models/notion/notion_page_hiring_job_offer/notion_page_hiring_job_offer.dart';

part 'hiring_job_offer.freezed.dart';

@freezed
class HiringJobOffer with _$HiringJobOffer {

  const factory HiringJobOffer({
    required String id,
    required bool archived,
    required String? emoji,
    required String url,
    required DateTime jobPosted,
    required SelectOption? team,
    required SelectOption? contratto,
    required SelectOption? seniority,
    required SelectOption? ral,
    required List<RichText> name,
    required List<RichText> qualifica,
    required List<RichText> retribuzione,
    required List<RichText> descrizioneOfferta,
    required List<RichText> comeCandidarsi,
    required List<RichText> localita,
    required List<RichText> nomeAzienda,
    required List<RichText> statoDiPubblicazione,
    required String? urlSitoWeb,
  }) = _HiringJobOffer;

  factory HiringJobOffer.fromNotion(NotionPageHiringJobOffer notionPageHiringJobOffer) {
    return HiringJobOffer(
      id: notionPageHiringJobOffer.id,
      archived: notionPageHiringJobOffer.archived,
      emoji: notionPageHiringJobOffer.icon?.maybeMap(emoji: (value) => value.emoji, orElse: () => null),
      url: notionPageHiringJobOffer.url,
      jobPosted: notionPageHiringJobOffer.properties.jobPosted.createdTime,
      team: SelectOption.fromNotion(notionPageHiringJobOffer.properties.team.select),
      contratto: SelectOption.fromNotion(notionPageHiringJobOffer.properties.contratto.select),
      seniority: SelectOption.fromNotion(notionPageHiringJobOffer.properties.seniority.select),
      ral: SelectOption.fromNotion(notionPageHiringJobOffer.properties.ral.select),
      name: notionPageHiringJobOffer.properties.name.title.map(RichText.fromNotion).toList(),
      qualifica: notionPageHiringJobOffer.properties.qualifica.richText.map(RichText.fromNotion).toList(),
      retribuzione: notionPageHiringJobOffer.properties.retribuzione.richText.map(RichText.fromNotion).toList(),
      descrizioneOfferta: notionPageHiringJobOffer.properties.descrizioneOfferta.richText.map(RichText.fromNotion).toList(),
      comeCandidarsi: notionPageHiringJobOffer.properties.comeCandidarsi.richText.map(RichText.fromNotion).toList(),
      localita: notionPageHiringJobOffer.properties.localita.richText.map(RichText.fromNotion).toList(),
      nomeAzienda: notionPageHiringJobOffer.properties.nomeAzienda.richText.map(RichText.fromNotion).toList(),
      statoDiPubblicazione: notionPageHiringJobOffer.properties.statoDiPubblicazione.richText.map(RichText.fromNotion).toList(),
      urlSitoWeb: notionPageHiringJobOffer.properties.urlSitoWeb.url
    );
  }
}
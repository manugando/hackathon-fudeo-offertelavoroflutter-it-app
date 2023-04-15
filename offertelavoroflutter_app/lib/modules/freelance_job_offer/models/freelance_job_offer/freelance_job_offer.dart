import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offertelavoroflutter_app/modules/common/models/select_option/select_option.dart';
import 'package:offertelavoroflutter_app/modules/common/models/styled_text/styled_text.dart';
import 'package:offertelavoroflutter_app/modules/freelance_job_offer/models/notion/notion_page_freelance_job_offer/notion_page_freelance_job_offer.dart';

part 'freelance_job_offer.freezed.dart';

@freezed
class FreelanceJobOffer with _$FreelanceJobOffer {
  const factory FreelanceJobOffer({
    required String id,
    required bool archived,
    required String? emoji,
    required String url,
    required DateTime? jobPosted,
    required List<StyledText>? tempistiche,
    required List<StyledText>? comeCandidarsi,
    required List<StyledText>? richiestaDiLavoro,
    required List<StyledText>? budget,
    required SelectOption? nda,
    required List<StyledText>? codice,
    required List<StyledText>? tempisticheDiPagamento,
    required List<StyledText>? descrizioneDelProgetto,
    required SelectOption? tipoDiRelazione
  }) = _FreelanceJobOffer;

  factory FreelanceJobOffer.fromNotion(NotionPageFreelanceJobOffer notionPageFreelanceJobOffer) {
    return FreelanceJobOffer(
      id: notionPageFreelanceJobOffer.id,
      archived: notionPageFreelanceJobOffer.archived,
      emoji: notionPageFreelanceJobOffer.icon?.maybeMap(emoji: (value) => value.emoji, orElse: () => null),
      url: notionPageFreelanceJobOffer.url,
      jobPosted: notionPageFreelanceJobOffer.properties.jobPosted?.createdTime,
      tempistiche: notionPageFreelanceJobOffer.properties.tempistiche?.richText.map(StyledText.fromNotion).toList(),
      comeCandidarsi: notionPageFreelanceJobOffer.properties.comeCandidarsi?.richText.map(StyledText.fromNotion).toList(),
      richiestaDiLavoro: notionPageFreelanceJobOffer.properties.richiestaDiLavoro?.richText.map(StyledText.fromNotion).toList(),
      budget: notionPageFreelanceJobOffer.properties.budget?.richText.map(StyledText.fromNotion).toList(),
      nda: SelectOption.fromNotionOrNull(notionPageFreelanceJobOffer.properties.nda?.select),
      codice: notionPageFreelanceJobOffer.properties.codice?.title.map(StyledText.fromNotion).toList(),
      tempisticheDiPagamento: notionPageFreelanceJobOffer.properties.tempisticheDiPagamento?.richText.map(StyledText.fromNotion).toList(),
      descrizioneDelProgetto: notionPageFreelanceJobOffer.properties.descrizioneDelProgetto?.richText.map(StyledText.fromNotion).toList(),
      tipoDiRelazione: SelectOption.fromNotionOrNull(notionPageFreelanceJobOffer.properties.tipoDiRelazione?.select),
    );
  }
}
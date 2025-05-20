
package Paws::LexModelsV2::SearchAssociatedTranscriptsResponse;
  use Moose;
  has AssociatedTranscripts => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AssociatedTranscript]', traits => ['NameInRequest'], request_name => 'associatedTranscripts');
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotRecommendationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botRecommendationId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has NextIndex => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'nextIndex');
  has TotalResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalResults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::SearchAssociatedTranscriptsResponse

=head1 ATTRIBUTES


=head2 AssociatedTranscripts => ArrayRef[L<Paws::LexModelsV2::AssociatedTranscript>]

The object that contains the associated transcript that meet the
criteria you specified.


=head2 BotId => Str

The unique identifier of the bot associated with the transcripts that
you are searching.


=head2 BotRecommendationId => Str

The unique identifier of the bot recommendation associated with the
transcripts to search.


=head2 BotVersion => Str

The version of the bot containing the transcripts that you are
searching.


=head2 LocaleId => Str

The identifier of the language and locale of the transcripts to search.
The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html)


=head2 NextIndex => Int

A index that indicates whether there are more results to return in a
response to the SearchAssociatedTranscripts operation. If the nextIndex
field is present, you send the contents as the nextIndex parameter of a
SearchAssociatedTranscriptsRequest operation to get the next page of
results.


=head2 TotalResults => Int

The total number of transcripts returned by the search.


=head2 _request_id => Str


=cut


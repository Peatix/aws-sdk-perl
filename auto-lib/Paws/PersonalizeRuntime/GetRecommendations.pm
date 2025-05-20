
package Paws::PersonalizeRuntime::GetRecommendations;
  use Moose;
  has CampaignArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'campaignArn');
  has Context => (is => 'ro', isa => 'Paws::PersonalizeRuntime::Context', traits => ['NameInRequest'], request_name => 'context');
  has FilterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterArn');
  has FilterValues => (is => 'ro', isa => 'Paws::PersonalizeRuntime::FilterValues', traits => ['NameInRequest'], request_name => 'filterValues');
  has ItemId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'itemId');
  has MetadataColumns => (is => 'ro', isa => 'Paws::PersonalizeRuntime::MetadataColumns', traits => ['NameInRequest'], request_name => 'metadataColumns');
  has NumResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numResults');
  has Promotions => (is => 'ro', isa => 'ArrayRef[Paws::PersonalizeRuntime::Promotion]', traits => ['NameInRequest'], request_name => 'promotions');
  has RecommenderArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recommenderArn');
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecommendations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recommendations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PersonalizeRuntime::GetRecommendationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime::GetRecommendations - Arguments for method GetRecommendations on L<Paws::PersonalizeRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecommendations on the
L<Amazon Personalize Runtime|Paws::PersonalizeRuntime> service. Use the attributes of this class
as arguments to method GetRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecommendations.

=head1 SYNOPSIS

    my $personalize-runtime = Paws->service('PersonalizeRuntime');
    my $GetRecommendationsResponse = $personalize -runtime->GetRecommendations(
      CampaignArn => 'MyArn',    # OPTIONAL
      Context     => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: max: 150, value: max: 1000
      },    # OPTIONAL
      FilterArn    => 'MyArn',    # OPTIONAL
      FilterValues => {
        'MyFilterAttributeName' =>
          'MyFilterAttributeValue',    # key: max: 50, value: max: 1000
      },    # OPTIONAL
      ItemId          => 'MyItemID',    # OPTIONAL
      MetadataColumns => {
        'MyDatasetType' => [
          'MyColumnName', ...           # max: 150
        ],    # key: max: 256, value: max: 99
      },    # OPTIONAL
      NumResults => 1,    # OPTIONAL
      Promotions => [
        {
          FilterArn    => 'MyArn',    # max: 256
          FilterValues => {
            'MyFilterAttributeName' =>
              'MyFilterAttributeValue',    # key: max: 50, value: max: 1000
          },    # max: 25
          Name                 => 'MyName',    # min: 1, max: 63; OPTIONAL
          PercentPromotedItems => 1,           # min: 1, max: 100; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      RecommenderArn => 'MyArn',       # OPTIONAL
      UserId         => 'MyUserID',    # OPTIONAL
    );

    # Results:
    my $ItemList         = $GetRecommendationsResponse->ItemList;
    my $RecommendationId = $GetRecommendationsResponse->RecommendationId;

    # Returns a L<Paws::PersonalizeRuntime::GetRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize-runtime/GetRecommendations>

=head1 ATTRIBUTES


=head2 CampaignArn => Str

The Amazon Resource Name (ARN) of the campaign to use for getting
recommendations.



=head2 Context => L<Paws::PersonalizeRuntime::Context>

The contextual metadata to use when getting recommendations. Contextual
metadata includes any interaction information that might be relevant
when getting a user's recommendations, such as the user's current
location or device type.



=head2 FilterArn => Str

The ARN of the filter to apply to the returned recommendations. For
more information, see Filtering Recommendations
(https://docs.aws.amazon.com/personalize/latest/dg/filter.html).

When using this parameter, be sure the filter resource is C<ACTIVE>.



=head2 FilterValues => L<Paws::PersonalizeRuntime::FilterValues>

The values to use when filtering recommendations. For each placeholder
parameter in your filter expression, provide the parameter name (in
matching case) as a key and the filter value(s) as the corresponding
value. Separate multiple values for one parameter with a comma.

For filter expressions that use an C<INCLUDE> element to include items,
you must provide values for all parameters that are defined in the
expression. For filters with expressions that use an C<EXCLUDE> element
to exclude items, you can omit the C<filter-values>.In this case,
Amazon Personalize doesn't use that portion of the expression to filter
recommendations.

For more information, see Filtering recommendations and user segments
(https://docs.aws.amazon.com/personalize/latest/dg/filter.html).



=head2 ItemId => Str

The item ID to provide recommendations for.

Required for C<RELATED_ITEMS> recipe type.



=head2 MetadataColumns => L<Paws::PersonalizeRuntime::MetadataColumns>

If you enabled metadata in recommendations when you created or updated
the campaign or recommender, specify the metadata columns from your
Items dataset to include in item recommendations. The map key is
C<ITEMS> and the value is a list of column names from your Items
dataset. The maximum number of columns you can provide is 10.

For information about enabling metadata for a campaign, see Enabling
metadata in recommendations for a campaign
(https://docs.aws.amazon.com/personalize/latest/dg/campaigns.html#create-campaign-return-metadata).
For information about enabling metadata for a recommender, see Enabling
metadata in recommendations for a recommender
(https://docs.aws.amazon.com/personalize/latest/dg/creating-recommenders.html#create-recommender-return-metadata).



=head2 NumResults => Int

The number of results to return. The default is 25. If you are
including metadata in recommendations, the maximum is 50. Otherwise,
the maximum is 500.



=head2 Promotions => ArrayRef[L<Paws::PersonalizeRuntime::Promotion>]

The promotions to apply to the recommendation request. A promotion
defines additional business rules that apply to a configurable subset
of recommended items.



=head2 RecommenderArn => Str

The Amazon Resource Name (ARN) of the recommender to use to get
recommendations. Provide a recommender ARN if you created a Domain
dataset group with a recommender for a domain use case.



=head2 UserId => Str

The user ID to provide recommendations for.

Required for C<USER_PERSONALIZATION> recipe type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecommendations in L<Paws::PersonalizeRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


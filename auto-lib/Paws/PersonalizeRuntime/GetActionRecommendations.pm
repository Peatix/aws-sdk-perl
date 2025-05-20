
package Paws::PersonalizeRuntime::GetActionRecommendations;
  use Moose;
  has CampaignArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'campaignArn');
  has FilterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterArn');
  has FilterValues => (is => 'ro', isa => 'Paws::PersonalizeRuntime::FilterValues', traits => ['NameInRequest'], request_name => 'filterValues');
  has NumResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numResults');
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetActionRecommendations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/action-recommendations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PersonalizeRuntime::GetActionRecommendationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime::GetActionRecommendations - Arguments for method GetActionRecommendations on L<Paws::PersonalizeRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetActionRecommendations on the
L<Amazon Personalize Runtime|Paws::PersonalizeRuntime> service. Use the attributes of this class
as arguments to method GetActionRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetActionRecommendations.

=head1 SYNOPSIS

    my $personalize-runtime = Paws->service('PersonalizeRuntime');
    my $GetActionRecommendationsResponse =
      $personalize -runtime->GetActionRecommendations(
      CampaignArn  => 'MyArn',    # OPTIONAL
      FilterArn    => 'MyArn',    # OPTIONAL
      FilterValues => {
        'MyFilterAttributeName' =>
          'MyFilterAttributeValue',    # key: max: 50, value: max: 1000
      },    # OPTIONAL
      NumResults => 1,             # OPTIONAL
      UserId     => 'MyUserID',    # OPTIONAL
      );

    # Results:
    my $ActionList       = $GetActionRecommendationsResponse->ActionList;
    my $RecommendationId = $GetActionRecommendationsResponse->RecommendationId;

# Returns a L<Paws::PersonalizeRuntime::GetActionRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize-runtime/GetActionRecommendations>

=head1 ATTRIBUTES


=head2 CampaignArn => Str

The Amazon Resource Name (ARN) of the campaign to use for getting
action recommendations. This campaign must deploy a solution version
trained with a PERSONALIZED_ACTIONS recipe.



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

For filter expressions that use an C<INCLUDE> element to include
actions, you must provide values for all parameters that are defined in
the expression. For filters with expressions that use an C<EXCLUDE>
element to exclude actions, you can omit the C<filter-values>. In this
case, Amazon Personalize doesn't use that portion of the expression to
filter recommendations.

For more information, see Filtering recommendations and user segments
(https://docs.aws.amazon.com/personalize/latest/dg/filter.html).



=head2 NumResults => Int

The number of results to return. The default is 5. The maximum is 100.



=head2 UserId => Str

The user ID of the user to provide action recommendations for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetActionRecommendations in L<Paws::PersonalizeRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


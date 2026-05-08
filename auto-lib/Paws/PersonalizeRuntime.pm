package Paws::PersonalizeRuntime;
  use Moose;
  sub service { 'personalize-runtime' }
  sub signing_name { 'personalize' }
  sub version { '2018-05-22' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetActionRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PersonalizeRuntime::GetActionRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPersonalizedRanking {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PersonalizeRuntime::GetPersonalizedRanking', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecommendations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PersonalizeRuntime::GetRecommendations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetActionRecommendations GetPersonalizedRanking GetRecommendations / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime - Perl Interface to AWS Amazon Personalize Runtime

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PersonalizeRuntime');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize-runtime-2018-05-22>


=head1 METHODS

=head2 GetActionRecommendations

=over

=item [CampaignArn => Str]

=item [FilterArn => Str]

=item [FilterValues => L<Paws::PersonalizeRuntime::FilterValues>]

=item [NumResults => Int]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::PersonalizeRuntime::GetActionRecommendations>

Returns: a L<Paws::PersonalizeRuntime::GetActionRecommendationsResponse> instance

Returns a list of recommended actions in sorted in descending order by
prediction score. Use the C<GetActionRecommendations> API if you have a
custom campaign that deploys a solution version trained with a
PERSONALIZED_ACTIONS recipe.

For more information about PERSONALIZED_ACTIONS recipes, see
PERSONALIZED_ACTIONS recipes
(https://docs.aws.amazon.com/personalize/latest/dg/nexts-best-action-recipes.html).
For more information about getting action recommendations, see Getting
action recommendations
(https://docs.aws.amazon.com/personalize/latest/dg/get-action-recommendations.html).


=head2 GetPersonalizedRanking

=over

=item CampaignArn => Str

=item InputList => ArrayRef[Str|Undef]

=item UserId => Str

=item [Context => L<Paws::PersonalizeRuntime::Context>]

=item [FilterArn => Str]

=item [FilterValues => L<Paws::PersonalizeRuntime::FilterValues>]

=item [MetadataColumns => L<Paws::PersonalizeRuntime::MetadataColumns>]


=back

Each argument is described in detail in: L<Paws::PersonalizeRuntime::GetPersonalizedRanking>

Returns: a L<Paws::PersonalizeRuntime::GetPersonalizedRankingResponse> instance

Re-ranks a list of recommended items for the given user. The first item
in the list is deemed the most likely item to be of interest to the
user.

The solution backing the campaign must have been created using a recipe
of type PERSONALIZED_RANKING.


=head2 GetRecommendations

=over

=item [CampaignArn => Str]

=item [Context => L<Paws::PersonalizeRuntime::Context>]

=item [FilterArn => Str]

=item [FilterValues => L<Paws::PersonalizeRuntime::FilterValues>]

=item [ItemId => Str]

=item [MetadataColumns => L<Paws::PersonalizeRuntime::MetadataColumns>]

=item [NumResults => Int]

=item [Promotions => ArrayRef[L<Paws::PersonalizeRuntime::Promotion>]]

=item [RecommenderArn => Str]

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::PersonalizeRuntime::GetRecommendations>

Returns: a L<Paws::PersonalizeRuntime::GetRecommendationsResponse> instance

Returns a list of recommended items. For campaigns, the campaign's
Amazon Resource Name (ARN) is required and the required user and item
input depends on the recipe type used to create the solution backing
the campaign as follows:

=over

=item *

USER_PERSONALIZATION - C<userId> required, C<itemId> not used

=item *

RELATED_ITEMS - C<itemId> required, C<userId> not used

=back

Campaigns that are backed by a solution created using a recipe of type
PERSONALIZED_RANKING use the API.

For recommenders, the recommender's ARN is required and the required
item and user input depends on the use case (domain-based recipe)
backing the recommender. For information on use case requirements see
Choosing recommender use cases
(https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


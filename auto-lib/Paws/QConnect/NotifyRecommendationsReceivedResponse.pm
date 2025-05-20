
package Paws::QConnect::NotifyRecommendationsReceivedResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::NotifyRecommendationsReceivedError]', traits => ['NameInRequest'], request_name => 'errors');
  has RecommendationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'recommendationIds');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::NotifyRecommendationsReceivedResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::QConnect::NotifyRecommendationsReceivedError>]

The identifiers of recommendations that are causing errors.


=head2 RecommendationIds => ArrayRef[Str|Undef]

The identifiers of the recommendations.


=head2 _request_id => Str


=cut


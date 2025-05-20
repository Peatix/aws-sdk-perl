
package Paws::Route53RecoveryReadiness::GetArchitectureRecommendationsResponse;
  use Moose;
  has LastAuditTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastAuditTimestamp');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Recommendations => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::Recommendation]', traits => ['NameInRequest'], request_name => 'recommendations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::GetArchitectureRecommendationsResponse

=head1 ATTRIBUTES


=head2 LastAuditTimestamp => Str

The time that a recovery group was last assessed for recommendations,
in UTC ISO-8601 format.


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 Recommendations => ArrayRef[L<Paws::Route53RecoveryReadiness::Recommendation>]

A list of the recommendations for the customer's application.


=head2 _request_id => Str


=cut


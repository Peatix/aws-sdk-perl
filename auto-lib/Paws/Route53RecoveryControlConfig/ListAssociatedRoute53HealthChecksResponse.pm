
package Paws::Route53RecoveryControlConfig::ListAssociatedRoute53HealthChecksResponse;
  use Moose;
  has HealthCheckIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::ListAssociatedRoute53HealthChecksResponse

=head1 ATTRIBUTES


=head2 HealthCheckIds => ArrayRef[Str|Undef]

Identifiers for the health checks.


=head2 NextToken => Str

Next token for listing health checks.


=head2 _request_id => Str


=cut


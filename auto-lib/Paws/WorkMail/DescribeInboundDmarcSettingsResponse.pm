
package Paws::WorkMail::DescribeInboundDmarcSettingsResponse;
  use Moose;
  has Enforced => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeInboundDmarcSettingsResponse

=head1 ATTRIBUTES


=head2 Enforced => Bool

Lists the enforcement setting of the applied policy.


=head2 _request_id => Str


=cut

1;
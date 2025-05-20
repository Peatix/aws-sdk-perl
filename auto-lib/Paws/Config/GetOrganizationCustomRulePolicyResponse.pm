
package Paws::Config::GetOrganizationCustomRulePolicyResponse;
  use Moose;
  has PolicyText => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetOrganizationCustomRulePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyText => Str

The policy definition containing the logic for your organization Config
Custom Policy rule.


=head2 _request_id => Str


=cut

1;
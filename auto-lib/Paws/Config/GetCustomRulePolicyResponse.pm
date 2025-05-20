
package Paws::Config::GetCustomRulePolicyResponse;
  use Moose;
  has PolicyText => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetCustomRulePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyText => Str

The policy definition containing the logic for your Config Custom
Policy rule.


=head2 _request_id => Str


=cut

1;
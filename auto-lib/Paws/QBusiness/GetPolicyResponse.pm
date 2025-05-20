
package Paws::QBusiness::GetPolicyResponse;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The JSON representation of the permission policy.


=head2 _request_id => Str


=cut


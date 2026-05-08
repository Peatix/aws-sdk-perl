
package Paws::CognitoIdp::GetGroupResponse;
  use Moose;
  has Group => (is => 'ro', isa => 'Paws::CognitoIdp::GroupType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetGroupResponse

=head1 ATTRIBUTES


=head2 Group => L<Paws::CognitoIdp::GroupType>

A container for the requested group. Includes description, precedence,
and IAM role values.


=head2 _request_id => Str


=cut

1;
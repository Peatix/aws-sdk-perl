
package Paws::QBusiness::GetUserResponse;
  use Moose;
  has UserAliases => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::UserAlias]', traits => ['NameInRequest'], request_name => 'userAliases');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::GetUserResponse

=head1 ATTRIBUTES


=head2 UserAliases => ArrayRef[L<Paws::QBusiness::UserAlias>]

A list of user aliases attached to a user.


=head2 _request_id => Str


=cut



package Paws::QBusiness::UpdateUserResponse;
  use Moose;
  has UserAliasesAdded => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::UserAlias]', traits => ['NameInRequest'], request_name => 'userAliasesAdded');
  has UserAliasesDeleted => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::UserAlias]', traits => ['NameInRequest'], request_name => 'userAliasesDeleted');
  has UserAliasesUpdated => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::UserAlias]', traits => ['NameInRequest'], request_name => 'userAliasesUpdated');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UpdateUserResponse

=head1 ATTRIBUTES


=head2 UserAliasesAdded => ArrayRef[L<Paws::QBusiness::UserAlias>]

The user aliases that have been to be added to a user id.


=head2 UserAliasesDeleted => ArrayRef[L<Paws::QBusiness::UserAlias>]

The user aliases that have been deleted from a user id.


=head2 UserAliasesUpdated => ArrayRef[L<Paws::QBusiness::UserAlias>]

The user aliases attached to a user id that have been updated.


=head2 _request_id => Str


=cut


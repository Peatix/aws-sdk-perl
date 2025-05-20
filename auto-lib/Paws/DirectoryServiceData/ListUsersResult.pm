
package Paws::DirectoryServiceData::ListUsersResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Realm => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::DirectoryServiceData::UserSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::ListUsersResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier (ID) of the directory that's associated with the user.


=head2 NextToken => Str

An encoded paging token for paginated calls that can be passed back to
retrieve the next page.


=head2 Realm => Str

The domain that's associated with the user.


=head2 Users => ArrayRef[L<Paws::DirectoryServiceData::UserSummary>]

The user information that the request returns.


=head2 _request_id => Str


=cut


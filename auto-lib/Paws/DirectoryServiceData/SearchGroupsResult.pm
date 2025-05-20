
package Paws::DirectoryServiceData::SearchGroupsResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::DirectoryServiceData::Group]');
  has NextToken => (is => 'ro', isa => 'Str');
  has Realm => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::SearchGroupsResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier (ID) of the directory that's associated with the group.


=head2 Groups => ArrayRef[L<Paws::DirectoryServiceData::Group>]

The group information that the request returns.


=head2 NextToken => Str

An encoded paging token for paginated calls that can be passed back to
retrieve the next page.


=head2 Realm => Str

The domain that's associated with the group.


=head2 _request_id => Str


=cut


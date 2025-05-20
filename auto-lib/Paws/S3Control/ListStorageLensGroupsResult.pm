
package Paws::S3Control::ListStorageLensGroupsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StorageLensGroupList => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::ListStorageLensGroupEntry]', request_name => 'StorageLensGroup', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListStorageLensGroupsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If C<NextToken> is returned, there are more Storage Lens groups results
available. The value of C<NextToken> is a unique pagination token for
each page. Make the call again using the returned token to retrieve the
next page. Keep all other arguments unchanged. Each pagination token
expires after 24 hours.



=head2 StorageLensGroupList => ArrayRef[L<Paws::S3Control::ListStorageLensGroupEntry>]

The list of Storage Lens groups that exist in the specified home
Region.




=cut


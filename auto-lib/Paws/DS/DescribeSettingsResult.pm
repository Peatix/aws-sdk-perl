
package Paws::DS::DescribeSettingsResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SettingEntries => (is => 'ro', isa => 'ArrayRef[Paws::DS::SettingEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeSettingsResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier of the directory.


=head2 NextToken => Str

If not null, token that indicates that more results are available. Pass
this value for the C<NextToken> parameter in a subsequent call to
C<DescribeSettings> to retrieve the next set of items.


=head2 SettingEntries => ArrayRef[L<Paws::DS::SettingEntry>]

The list of SettingEntry objects that were retrieved.

It is possible that this list contains less than the number of items
specified in the C<Limit> member of the request. This occurs if there
are less than the requested number of items left to retrieve, or if the
limitations of the operation have been exceeded.


=head2 _request_id => Str


=cut

1;
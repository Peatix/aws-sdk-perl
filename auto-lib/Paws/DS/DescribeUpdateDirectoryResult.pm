
package Paws::DS::DescribeUpdateDirectoryResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UpdateActivities => (is => 'ro', isa => 'ArrayRef[Paws::DS::UpdateInfoEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeUpdateDirectoryResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
C<NextToken> parameter.


=head2 UpdateActivities => ArrayRef[L<Paws::DS::UpdateInfoEntry>]

The list of update activities on a directory for the requested update
type.


=head2 _request_id => Str


=cut

1;
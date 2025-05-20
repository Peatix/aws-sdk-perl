
package Paws::WorkSpaces::DescribeApplicationsResult;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::WorkSpaceApplication]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeApplicationsResult

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::WorkSpaces::WorkSpaceApplication>]

List of information about the specified applications.


=head2 NextToken => Str

If you received a C<NextToken> from a previous call that was paginated,
provide this token to receive the next set of results.


=head2 _request_id => Str


=cut

1;
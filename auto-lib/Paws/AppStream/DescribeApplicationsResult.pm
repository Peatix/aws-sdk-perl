
package Paws::AppStream::DescribeApplicationsResult;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::Application]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeApplicationsResult

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::AppStream::Application>]

The applications in the list.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

1;
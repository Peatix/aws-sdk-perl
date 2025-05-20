
package Paws::WorkSpaces::DescribeConnectClientAddInsResult;
  use Moose;
  has AddIns => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::ConnectClientAddIn]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeConnectClientAddInsResult

=head1 ATTRIBUTES


=head2 AddIns => ArrayRef[L<Paws::WorkSpaces::ConnectClientAddIn>]

Information about client add-ins.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

1;
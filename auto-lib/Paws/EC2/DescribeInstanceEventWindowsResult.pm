
package Paws::EC2::DescribeInstanceEventWindowsResult;
  use Moose;
  has InstanceEventWindows => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceEventWindow]', request_name => 'instanceEventWindowSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceEventWindowsResult

=head1 ATTRIBUTES


=head2 InstanceEventWindows => ArrayRef[L<Paws::EC2::InstanceEventWindow>]

Information about the event windows.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut



package Paws::EC2::DescribeStoreImageTasksResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has StoreImageTaskResults => (is => 'ro', isa => 'ArrayRef[Paws::EC2::StoreImageTaskResult]', request_name => 'storeImageTaskResultSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeStoreImageTasksResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 StoreImageTaskResults => ArrayRef[L<Paws::EC2::StoreImageTaskResult>]

The information about the AMI store tasks.


=head2 _request_id => Str


=cut



package Paws::S3Control::DescribeMultiRegionAccessPointOperationResult;
  use Moose;
  has AsyncOperation => (is => 'ro', isa => 'Paws::S3Control::AsyncOperation');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::DescribeMultiRegionAccessPointOperationResult

=head1 ATTRIBUTES


=head2 AsyncOperation => L<Paws::S3Control::AsyncOperation>

A container element containing the details of the asynchronous
operation.




=cut


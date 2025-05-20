
package Paws::S3Control::DeleteMultiRegionAccessPointResult;
  use Moose;
  has RequestTokenARN => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::DeleteMultiRegionAccessPointResult

=head1 ATTRIBUTES


=head2 RequestTokenARN => Str

The request token associated with the request. You can use this token
with DescribeMultiRegionAccessPointOperation
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html)
to determine the status of asynchronous requests.




=cut



package Paws::S3Control::GetMultiRegionAccessPointPolicyResult;
  use Moose;
  has Policy => (is => 'ro', isa => 'Paws::S3Control::MultiRegionAccessPointPolicyDocument');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetMultiRegionAccessPointPolicyResult

=head1 ATTRIBUTES


=head2 Policy => L<Paws::S3Control::MultiRegionAccessPointPolicyDocument>

The policy associated with the specified Multi-Region Access Point.




=cut



package Paws::S3Control::GetMultiRegionAccessPointResult;
  use Moose;
  has AccessPoint => (is => 'ro', isa => 'Paws::S3Control::MultiRegionAccessPointReport');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetMultiRegionAccessPointResult

=head1 ATTRIBUTES


=head2 AccessPoint => L<Paws::S3Control::MultiRegionAccessPointReport>

A container element containing the details of the requested
Multi-Region Access Point.




=cut


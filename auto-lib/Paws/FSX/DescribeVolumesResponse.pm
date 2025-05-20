
package Paws::FSX::DescribeVolumesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Volume]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DescribeVolumesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 Volumes => ArrayRef[L<Paws::FSX::Volume>]

Returned after a successful C<DescribeVolumes> operation, describing
each volume.


=head2 _request_id => Str


=cut

1;
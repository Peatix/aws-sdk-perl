
package Paws::S3Control::GetMultiRegionAccessPointRoutesResult;
  use Moose;
  has Mrap => (is => 'ro', isa => 'Str');
  has Routes => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::MultiRegionAccessPointRoute]', request_name => 'Route', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetMultiRegionAccessPointRoutesResult

=head1 ATTRIBUTES


=head2 Mrap => Str

The Multi-Region Access Point ARN.



=head2 Routes => ArrayRef[L<Paws::S3Control::MultiRegionAccessPointRoute>]

The different routes that make up the route configuration. Active
routes return a value of C<100>, and passive routes return a value of
C<0>.




=cut


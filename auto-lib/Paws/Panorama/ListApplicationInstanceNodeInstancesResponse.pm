
package Paws::Panorama::ListApplicationInstanceNodeInstancesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NodeInstances => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::NodeInstance]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListApplicationInstanceNodeInstancesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 NodeInstances => ArrayRef[L<Paws::Panorama::NodeInstance>]

A list of node instances.


=head2 _request_id => Str


=cut


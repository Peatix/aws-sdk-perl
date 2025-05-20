
package Paws::Panorama::ListApplicationInstancesResponse;
  use Moose;
  has ApplicationInstances => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::ApplicationInstance]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListApplicationInstancesResponse

=head1 ATTRIBUTES


=head2 ApplicationInstances => ArrayRef[L<Paws::Panorama::ApplicationInstance>]

A list of application instances.


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 _request_id => Str


=cut


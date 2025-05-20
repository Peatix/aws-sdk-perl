
package Paws::Panorama::SignalApplicationInstanceNodeInstancesResponse;
  use Moose;
  has ApplicationInstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::SignalApplicationInstanceNodeInstancesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationInstanceId => Str

An application instance ID.


=head2 _request_id => Str


=cut


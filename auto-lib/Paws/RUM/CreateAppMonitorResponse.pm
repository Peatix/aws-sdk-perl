
package Paws::RUM::CreateAppMonitorResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::CreateAppMonitorResponse

=head1 ATTRIBUTES


=head2 Id => Str

The unique ID of the new app monitor.


=head2 _request_id => Str


=cut


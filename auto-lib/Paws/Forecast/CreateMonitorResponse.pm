
package Paws::Forecast::CreateMonitorResponse;
  use Moose;
  has MonitorArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateMonitorResponse

=head1 ATTRIBUTES


=head2 MonitorArn => Str

The Amazon Resource Name (ARN) of the monitor resource.


=head2 _request_id => Str


=cut

1;
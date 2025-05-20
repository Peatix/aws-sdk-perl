
package Paws::Deadline::UpdateWorkerResponse;
  use Moose;
  has HostConfiguration => (is => 'ro', isa => 'Paws::Deadline::HostConfiguration', traits => ['NameInRequest'], request_name => 'hostConfiguration');
  has Log => (is => 'ro', isa => 'Paws::Deadline::LogConfiguration', traits => ['NameInRequest'], request_name => 'log');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::UpdateWorkerResponse

=head1 ATTRIBUTES


=head2 HostConfiguration => L<Paws::Deadline::HostConfiguration>

The script that runs as a worker is starting up that you can use to
provide additional configuration for workers in your fleet.


=head2 Log => L<Paws::Deadline::LogConfiguration>

The worker log to update.


=head2 _request_id => Str


=cut


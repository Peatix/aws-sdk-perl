
package Paws::Deadline::CreateMonitorResponse;
  use Moose;
  has IdentityCenterApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityCenterApplicationArn', required => 1);
  has MonitorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'monitorId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateMonitorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityCenterApplicationArn => Str

The Amazon Resource Name (ARN) that IAM Identity Center assigns to the
monitor.


=head2 B<REQUIRED> MonitorId => Str

The unique identifier of the monitor.


=head2 _request_id => Str


=cut


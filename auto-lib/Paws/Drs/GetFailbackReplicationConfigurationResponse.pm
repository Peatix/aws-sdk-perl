
package Paws::Drs::GetFailbackReplicationConfigurationResponse;
  use Moose;
  has BandwidthThrottling => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'bandwidthThrottling');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RecoveryInstanceID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryInstanceID', required => 1);
  has UsePrivateIP => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'usePrivateIP');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::GetFailbackReplicationConfigurationResponse

=head1 ATTRIBUTES


=head2 BandwidthThrottling => Int

Configure bandwidth throttling for the outbound data transfer rate of
the Recovery Instance in Mbps.


=head2 Name => Str

The name of the Failback Replication Configuration.


=head2 B<REQUIRED> RecoveryInstanceID => Str

The ID of the Recovery Instance.


=head2 UsePrivateIP => Bool

Whether to use Private IP for the failback replication of the Recovery
Instance.


=head2 _request_id => Str


=cut



package Paws::Drs::UpdateFailbackReplicationConfiguration;
  use Moose;
  has BandwidthThrottling => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'bandwidthThrottling');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RecoveryInstanceID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryInstanceID', required => 1);
  has UsePrivateIP => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'usePrivateIP');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFailbackReplicationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateFailbackReplicationConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::UpdateFailbackReplicationConfiguration - Arguments for method UpdateFailbackReplicationConfiguration on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFailbackReplicationConfiguration on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method UpdateFailbackReplicationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFailbackReplicationConfiguration.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    $drs->UpdateFailbackReplicationConfiguration(
      RecoveryInstanceID  => 'MyRecoveryInstanceID',
      BandwidthThrottling => 1,                        # OPTIONAL
      Name                => 'MyBoundedString',        # OPTIONAL
      UsePrivateIP        => 1,                        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/UpdateFailbackReplicationConfiguration>

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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFailbackReplicationConfiguration in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::DMS::ModifyReplicationConfig;
  use Moose;
  has ComputeConfig => (is => 'ro', isa => 'Paws::DMS::ComputeConfig');
  has ReplicationConfigArn => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationConfigIdentifier => (is => 'ro', isa => 'Str');
  has ReplicationSettings => (is => 'ro', isa => 'Str');
  has ReplicationType => (is => 'ro', isa => 'Str');
  has SourceEndpointArn => (is => 'ro', isa => 'Str');
  has SupplementalSettings => (is => 'ro', isa => 'Str');
  has TableMappings => (is => 'ro', isa => 'Str');
  has TargetEndpointArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReplicationConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ModifyReplicationConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyReplicationConfig - Arguments for method ModifyReplicationConfig on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyReplicationConfig on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ModifyReplicationConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyReplicationConfig.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $ModifyReplicationConfigResponse = $dms->ModifyReplicationConfig(
      ReplicationConfigArn => 'MyString',
      ComputeConfig        => {
        AvailabilityZone           => 'MyString',
        DnsNameServers             => 'MyString',
        KmsKeyId                   => 'MyString',
        MaxCapacityUnits           => 1,                      # OPTIONAL
        MinCapacityUnits           => 1,                      # OPTIONAL
        MultiAZ                    => 1,                      # OPTIONAL
        PreferredMaintenanceWindow => 'MyString',
        ReplicationSubnetGroupId   => 'MyString',
        VpcSecurityGroupIds        => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
      ReplicationConfigIdentifier => 'MyString',     # OPTIONAL
      ReplicationSettings         => 'MyString',     # OPTIONAL
      ReplicationType             => 'full-load',    # OPTIONAL
      SourceEndpointArn           => 'MyString',     # OPTIONAL
      SupplementalSettings        => 'MyString',     # OPTIONAL
      TableMappings               => 'MyString',     # OPTIONAL
      TargetEndpointArn           => 'MyString',     # OPTIONAL
    );

    # Results:
    my $ReplicationConfig = $ModifyReplicationConfigResponse->ReplicationConfig;

    # Returns a L<Paws::DMS::ModifyReplicationConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ModifyReplicationConfig>

=head1 ATTRIBUTES


=head2 ComputeConfig => L<Paws::DMS::ComputeConfig>

Configuration parameters for provisioning an DMS Serverless
replication.



=head2 B<REQUIRED> ReplicationConfigArn => Str

The Amazon Resource Name of the replication to modify.



=head2 ReplicationConfigIdentifier => Str

The new replication config to apply to the replication.



=head2 ReplicationSettings => Str

The settings for the replication.



=head2 ReplicationType => Str

The type of replication.

Valid values are: C<"full-load">, C<"cdc">, C<"full-load-and-cdc">

=head2 SourceEndpointArn => Str

The Amazon Resource Name (ARN) of the source endpoint for this DMS
serverless replication configuration.



=head2 SupplementalSettings => Str

Additional settings for the replication.



=head2 TableMappings => Str

Table mappings specified in the replication.



=head2 TargetEndpointArn => Str

The Amazon Resource Name (ARN) of the target endpoint for this DMS
serverless replication configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyReplicationConfig in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


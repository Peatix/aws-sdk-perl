
package Paws::DMS::CreateReplicationConfig;
  use Moose;
  has ComputeConfig => (is => 'ro', isa => 'Paws::DMS::ComputeConfig', required => 1);
  has ReplicationConfigIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationSettings => (is => 'ro', isa => 'Str');
  has ReplicationType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceEndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has SupplementalSettings => (is => 'ro', isa => 'Str');
  has TableMappings => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');
  has TargetEndpointArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CreateReplicationConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateReplicationConfig - Arguments for method CreateReplicationConfig on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationConfig on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CreateReplicationConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationConfig.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $CreateReplicationConfigResponse = $dms->CreateReplicationConfig(
      ComputeConfig => {
        AvailabilityZone           => 'MyString',    # OPTIONAL
        DnsNameServers             => 'MyString',    # OPTIONAL
        KmsKeyId                   => 'MyString',    # OPTIONAL
        MaxCapacityUnits           => 1,             # OPTIONAL
        MinCapacityUnits           => 1,             # OPTIONAL
        MultiAZ                    => 1,             # OPTIONAL
        PreferredMaintenanceWindow => 'MyString',    # OPTIONAL
        ReplicationSubnetGroupId   => 'MyString',    # OPTIONAL
        VpcSecurityGroupIds        => [
          'MyString', ...                            # OPTIONAL
        ],    # OPTIONAL
      },
      ReplicationConfigIdentifier => 'MyString',
      ReplicationType             => 'full-load',
      SourceEndpointArn           => 'MyString',
      TableMappings               => 'MyString',
      TargetEndpointArn           => 'MyString',
      ReplicationSettings         => 'MyString',    # OPTIONAL
      ResourceIdentifier          => 'MyString',    # OPTIONAL
      SupplementalSettings        => 'MyString',    # OPTIONAL
      Tags                        => [
        {
          Key         => 'MyString',    # OPTIONAL
          ResourceArn => 'MyString',    # OPTIONAL
          Value       => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ReplicationConfig = $CreateReplicationConfigResponse->ReplicationConfig;

    # Returns a L<Paws::DMS::CreateReplicationConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CreateReplicationConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeConfig => L<Paws::DMS::ComputeConfig>

Configuration parameters for provisioning an DMS Serverless
replication.



=head2 B<REQUIRED> ReplicationConfigIdentifier => Str

A unique identifier that you want to use to create a
C<ReplicationConfigArn> that is returned as part of the output from
this action. You can then pass this output C<ReplicationConfigArn> as
the value of the C<ReplicationConfigArn> option for other actions to
identify both DMS Serverless replications and replication
configurations that you want those actions to operate on. For some
actions, you can also use either this unique identifier or a
corresponding ARN in action filters to identify the specific
replication and replication configuration to operate on.



=head2 ReplicationSettings => Str

Optional JSON settings for DMS Serverless replications that are
provisioned using this replication configuration. For example, see
Change processing tuning settings
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.ChangeProcessingTuning.html).



=head2 B<REQUIRED> ReplicationType => Str

The type of DMS Serverless replication to provision using this
replication configuration.

Possible values:

=over

=item *

C<"full-load">

=item *

C<"cdc">

=item *

C<"full-load-and-cdc">

=back


Valid values are: C<"full-load">, C<"cdc">, C<"full-load-and-cdc">

=head2 ResourceIdentifier => Str

Optional unique value or name that you set for a given resource that
can be used to construct an Amazon Resource Name (ARN) for that
resource. For more information, see Fine-grained access control using
resource names and tags
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.FineGrainedAccess).



=head2 B<REQUIRED> SourceEndpointArn => Str

The Amazon Resource Name (ARN) of the source endpoint for this DMS
Serverless replication configuration.



=head2 SupplementalSettings => Str

Optional JSON settings for specifying supplemental data. For more
information, see Specifying supplemental data for task settings
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html).



=head2 B<REQUIRED> TableMappings => Str

JSON table mappings for DMS Serverless replications that are
provisioned using this replication configuration. For more information,
see Specifying table selection and transformations rules using JSON
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.SelectionTransformation.html).



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

One or more optional tags associated with resources used by the DMS
Serverless replication. For more information, see Tagging resources in
Database Migration Service
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tagging.html).



=head2 B<REQUIRED> TargetEndpointArn => Str

The Amazon Resource Name (ARN) of the target endpoint for this DMS
serverless replication configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationConfig in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


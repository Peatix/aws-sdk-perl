
package Paws::Keyspaces::RestoreTable;
  use Moose;
  has AutoScalingSpecification => (is => 'ro', isa => 'Paws::Keyspaces::AutoScalingSpecification', traits => ['NameInRequest'], request_name => 'autoScalingSpecification' );
  has CapacitySpecificationOverride => (is => 'ro', isa => 'Paws::Keyspaces::CapacitySpecification', traits => ['NameInRequest'], request_name => 'capacitySpecificationOverride' );
  has EncryptionSpecificationOverride => (is => 'ro', isa => 'Paws::Keyspaces::EncryptionSpecification', traits => ['NameInRequest'], request_name => 'encryptionSpecificationOverride' );
  has PointInTimeRecoveryOverride => (is => 'ro', isa => 'Paws::Keyspaces::PointInTimeRecovery', traits => ['NameInRequest'], request_name => 'pointInTimeRecoveryOverride' );
  has ReplicaSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::ReplicaSpecification]', traits => ['NameInRequest'], request_name => 'replicaSpecifications' );
  has RestoreTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'restoreTimestamp' );
  has SourceKeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceKeyspaceName' , required => 1);
  has SourceTableName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceTableName' , required => 1);
  has TagsOverride => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::Tag]', traits => ['NameInRequest'], request_name => 'tagsOverride' );
  has TargetKeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetKeyspaceName' , required => 1);
  has TargetTableName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetTableName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Keyspaces::RestoreTableResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::RestoreTable - Arguments for method RestoreTable on L<Paws::Keyspaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreTable on the
L<Amazon Keyspaces|Paws::Keyspaces> service. Use the attributes of this class
as arguments to method RestoreTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreTable.

=head1 SYNOPSIS

    my $cassandra = Paws->service('Keyspaces');
    my $RestoreTableResponse = $cassandra->RestoreTable(
      SourceKeyspaceName       => 'MyKeyspaceName',
      SourceTableName          => 'MyTableName',
      TargetKeyspaceName       => 'MyKeyspaceName',
      TargetTableName          => 'MyTableName',
      AutoScalingSpecification => {
        ReadCapacityAutoScaling => {
          AutoScalingDisabled => 1,    # OPTIONAL
          MaximumUnits        => 1,    # min: 1; OPTIONAL
          MinimumUnits        => 1,    # min: 1; OPTIONAL
          ScalingPolicy       => {
            TargetTrackingScalingPolicyConfiguration => {
              TargetValue      => 1,
              DisableScaleIn   => 1,    # OPTIONAL
              ScaleInCooldown  => 1,    # OPTIONAL
              ScaleOutCooldown => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        WriteCapacityAutoScaling => {
          AutoScalingDisabled => 1,    # OPTIONAL
          MaximumUnits        => 1,    # min: 1; OPTIONAL
          MinimumUnits        => 1,    # min: 1; OPTIONAL
          ScalingPolicy       => {
            TargetTrackingScalingPolicyConfiguration => {
              TargetValue      => 1,
              DisableScaleIn   => 1,    # OPTIONAL
              ScaleInCooldown  => 1,    # OPTIONAL
              ScaleOutCooldown => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      CapacitySpecificationOverride => {
        ThroughputMode =>
          'PAY_PER_REQUEST',    # values: PAY_PER_REQUEST, PROVISIONED
        ReadCapacityUnits  => 1,    # min: 1; OPTIONAL
        WriteCapacityUnits => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      EncryptionSpecificationOverride => {
        Type => 'CUSTOMER_MANAGED_KMS_KEY'
        ,    # values: CUSTOMER_MANAGED_KMS_KEY, AWS_OWNED_KMS_KEY
        KmsKeyIdentifier => 'MykmsKeyARN',    # min: 1, max: 5096; OPTIONAL
      },    # OPTIONAL
      PointInTimeRecoveryOverride => {
        Status => 'ENABLED',    # values: ENABLED, DISABLED

      },    # OPTIONAL
      ReplicaSpecifications => [
        {
          Region                  => 'Myregion',    # min: 2, max: 25
          ReadCapacityAutoScaling => {
            AutoScalingDisabled => 1,               # OPTIONAL
            MaximumUnits        => 1,               # min: 1; OPTIONAL
            MinimumUnits        => 1,               # min: 1; OPTIONAL
            ScalingPolicy       => {
              TargetTrackingScalingPolicyConfiguration => {
                TargetValue      => 1,
                DisableScaleIn   => 1,    # OPTIONAL
                ScaleInCooldown  => 1,    # OPTIONAL
                ScaleOutCooldown => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ReadCapacityUnits => 1,    # min: 1; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      RestoreTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
      TagsOverride     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $RestoredTableARN = $RestoreTableResponse->RestoredTableARN;

    # Returns a L<Paws::Keyspaces::RestoreTableResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cassandra/RestoreTable>

=head1 ATTRIBUTES


=head2 AutoScalingSpecification => L<Paws::Keyspaces::AutoScalingSpecification>

The optional auto scaling settings for the restored table in
provisioned capacity mode. Specifies if the service can manage
throughput capacity of a provisioned table automatically on your
behalf. Amazon Keyspaces auto scaling helps you provision throughput
capacity for variable workloads efficiently by increasing and
decreasing your table's read and write capacity automatically in
response to application traffic.

For more information, see Managing throughput capacity automatically
with Amazon Keyspaces auto scaling
(https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html)
in the I<Amazon Keyspaces Developer Guide>.



=head2 CapacitySpecificationOverride => L<Paws::Keyspaces::CapacitySpecification>

Specifies the read/write throughput capacity mode for the target table.
The options are:

=over

=item *

C<throughputMode:PAY_PER_REQUEST>

=item *

C<throughputMode:PROVISIONED> - Provisioned capacity mode requires
C<readCapacityUnits> and C<writeCapacityUnits> as input.

=back

The default is C<throughput_mode:PAY_PER_REQUEST>.

For more information, see Read/write capacity modes
(https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html)
in the I<Amazon Keyspaces Developer Guide>.



=head2 EncryptionSpecificationOverride => L<Paws::Keyspaces::EncryptionSpecification>

Specifies the encryption settings for the target table. You can choose
one of the following KMS key (KMS key):

=over

=item *

C<type:AWS_OWNED_KMS_KEY> - This key is owned by Amazon Keyspaces.

=item *

C<type:CUSTOMER_MANAGED_KMS_KEY> - This key is stored in your account
and is created, owned, and managed by you. This option requires the
C<kms_key_identifier> of the KMS key in Amazon Resource Name (ARN)
format as input.

=back

The default is C<type:AWS_OWNED_KMS_KEY>.

For more information, see Encryption at rest
(https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html)
in the I<Amazon Keyspaces Developer Guide>.



=head2 PointInTimeRecoveryOverride => L<Paws::Keyspaces::PointInTimeRecovery>

Specifies the C<pointInTimeRecovery> settings for the target table. The
options are:

=over

=item *

C<status=ENABLED>

=item *

C<status=DISABLED>

=back

If it's not specified, the default is C<status=DISABLED>.

For more information, see Point-in-time recovery
(https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html)
in the I<Amazon Keyspaces Developer Guide>.



=head2 ReplicaSpecifications => ArrayRef[L<Paws::Keyspaces::ReplicaSpecification>]

The optional Region specific settings of a multi-Regional table.



=head2 RestoreTimestamp => Str

The restore timestamp in ISO 8601 format.



=head2 B<REQUIRED> SourceKeyspaceName => Str

The keyspace name of the source table.



=head2 B<REQUIRED> SourceTableName => Str

The name of the source table.



=head2 TagsOverride => ArrayRef[L<Paws::Keyspaces::Tag>]

A list of key-value pair tags to be attached to the restored table.

For more information, see Adding tags and labels to Amazon Keyspaces
resources
(https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html)
in the I<Amazon Keyspaces Developer Guide>.



=head2 B<REQUIRED> TargetKeyspaceName => Str

The name of the target keyspace.



=head2 B<REQUIRED> TargetTableName => Str

The name of the target table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreTable in L<Paws::Keyspaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


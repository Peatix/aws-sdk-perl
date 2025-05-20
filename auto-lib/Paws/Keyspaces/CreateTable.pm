
package Paws::Keyspaces::CreateTable;
  use Moose;
  has AutoScalingSpecification => (is => 'ro', isa => 'Paws::Keyspaces::AutoScalingSpecification', traits => ['NameInRequest'], request_name => 'autoScalingSpecification' );
  has CapacitySpecification => (is => 'ro', isa => 'Paws::Keyspaces::CapacitySpecification', traits => ['NameInRequest'], request_name => 'capacitySpecification' );
  has ClientSideTimestamps => (is => 'ro', isa => 'Paws::Keyspaces::ClientSideTimestamps', traits => ['NameInRequest'], request_name => 'clientSideTimestamps' );
  has Comment => (is => 'ro', isa => 'Paws::Keyspaces::Comment', traits => ['NameInRequest'], request_name => 'comment' );
  has DefaultTimeToLive => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'defaultTimeToLive' );
  has EncryptionSpecification => (is => 'ro', isa => 'Paws::Keyspaces::EncryptionSpecification', traits => ['NameInRequest'], request_name => 'encryptionSpecification' );
  has KeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceName' , required => 1);
  has PointInTimeRecovery => (is => 'ro', isa => 'Paws::Keyspaces::PointInTimeRecovery', traits => ['NameInRequest'], request_name => 'pointInTimeRecovery' );
  has ReplicaSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::ReplicaSpecification]', traits => ['NameInRequest'], request_name => 'replicaSpecifications' );
  has SchemaDefinition => (is => 'ro', isa => 'Paws::Keyspaces::SchemaDefinition', traits => ['NameInRequest'], request_name => 'schemaDefinition' , required => 1);
  has TableName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has Ttl => (is => 'ro', isa => 'Paws::Keyspaces::TimeToLive', traits => ['NameInRequest'], request_name => 'ttl' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Keyspaces::CreateTableResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::CreateTable - Arguments for method CreateTable on L<Paws::Keyspaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTable on the
L<Amazon Keyspaces|Paws::Keyspaces> service. Use the attributes of this class
as arguments to method CreateTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTable.

=head1 SYNOPSIS

    my $cassandra = Paws->service('Keyspaces');
    my $CreateTableResponse = $cassandra->CreateTable(
      KeyspaceName     => 'MyKeyspaceName',
      SchemaDefinition => {
        AllColumns => [
          {
            Name => 'MyGenericString',
            Type => 'MyGenericString',

          },
          ...
        ],    # min: 1
        PartitionKeys => [
          {
            Name => 'MyGenericString',

          },
          ...
        ],    # min: 1
        ClusteringKeys => [
          {
            Name    => 'MyGenericString',
            OrderBy => 'ASC',               # values: ASC, DESC

          },
          ...
        ],    # OPTIONAL
        StaticColumns => [
          {
            Name => 'MyGenericString',

          },
          ...
        ],    # OPTIONAL
      },
      TableName                => 'MyTableName',
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
      CapacitySpecification => {
        ThroughputMode =>
          'PAY_PER_REQUEST',    # values: PAY_PER_REQUEST, PROVISIONED
        ReadCapacityUnits  => 1,    # min: 1; OPTIONAL
        WriteCapacityUnits => 1,    # min: 1; OPTIONAL
      },    # OPTIONAL
      ClientSideTimestamps => {
        Status => 'ENABLED',    # values: ENABLED

      },    # OPTIONAL
      Comment => {
        Message => 'MyString',

      },    # OPTIONAL
      DefaultTimeToLive       => 1,    # OPTIONAL
      EncryptionSpecification => {
        Type => 'CUSTOMER_MANAGED_KMS_KEY'
        ,    # values: CUSTOMER_MANAGED_KMS_KEY, AWS_OWNED_KMS_KEY
        KmsKeyIdentifier => 'MykmsKeyARN',    # min: 1, max: 5096; OPTIONAL
      },    # OPTIONAL
      PointInTimeRecovery => {
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
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      Ttl => {
        Status => 'ENABLED',    # values: ENABLED

      },    # OPTIONAL
    );

    # Results:
    my $ResourceArn = $CreateTableResponse->ResourceArn;

    # Returns a L<Paws::Keyspaces::CreateTableResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cassandra/CreateTable>

=head1 ATTRIBUTES


=head2 AutoScalingSpecification => L<Paws::Keyspaces::AutoScalingSpecification>

The optional auto scaling settings for a table in provisioned capacity
mode. Specifies if the service can manage throughput capacity
automatically on your behalf.

Auto scaling helps you provision throughput capacity for variable
workloads efficiently by increasing and decreasing your table's read
and write capacity automatically in response to application traffic.
For more information, see Managing throughput capacity automatically
with Amazon Keyspaces auto scaling
(https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html)
in the I<Amazon Keyspaces Developer Guide>.

By default, auto scaling is disabled for a table.



=head2 CapacitySpecification => L<Paws::Keyspaces::CapacitySpecification>

Specifies the read/write throughput capacity mode for the table. The
options are:

=over

=item *

C<throughputMode:PAY_PER_REQUEST> and

=item *

C<throughputMode:PROVISIONED> - Provisioned capacity mode requires
C<readCapacityUnits> and C<writeCapacityUnits> as input.

=back

The default is C<throughput_mode:PAY_PER_REQUEST>.

For more information, see Read/write capacity modes
(https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html)
in the I<Amazon Keyspaces Developer Guide>.



=head2 ClientSideTimestamps => L<Paws::Keyspaces::ClientSideTimestamps>

Enables client-side timestamps for the table. By default, the setting
is disabled. You can enable client-side timestamps with the following
option:

=over

=item *

C<status: "enabled">

=back

Once client-side timestamps are enabled for a table, this setting
cannot be disabled.



=head2 Comment => L<Paws::Keyspaces::Comment>

This parameter allows to enter a description of the table.



=head2 DefaultTimeToLive => Int

The default Time to Live setting in seconds for the table.

For more information, see Setting the default TTL value for a table
(https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl)
in the I<Amazon Keyspaces Developer Guide>.



=head2 EncryptionSpecification => L<Paws::Keyspaces::EncryptionSpecification>

Specifies how the encryption key for encryption at rest is managed for
the table. You can choose one of the following KMS key (KMS key):

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



=head2 B<REQUIRED> KeyspaceName => Str

The name of the keyspace that the table is going to be created in.



=head2 PointInTimeRecovery => L<Paws::Keyspaces::PointInTimeRecovery>

Specifies if C<pointInTimeRecovery> is enabled or disabled for the
table. The options are:

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

The optional Amazon Web Services Region specific settings of a
multi-Region table. These settings overwrite the general settings of
the table for the specified Region.

For a multi-Region table in provisioned capacity mode, you can
configure the table's read capacity differently for each Region's
replica. The write capacity, however, remains synchronized between all
replicas to ensure that there's enough capacity to replicate writes
across all Regions. To define the read capacity for a table replica in
a specific Region, you can do so by configuring the following
parameters.

=over

=item *

C<region>: The Region where these settings are applied. (Required)

=item *

C<readCapacityUnits>: The provisioned read capacity units. (Optional)

=item *

C<readCapacityAutoScaling>: The read capacity auto scaling settings for
the table. (Optional)

=back




=head2 B<REQUIRED> SchemaDefinition => L<Paws::Keyspaces::SchemaDefinition>

The C<schemaDefinition> consists of the following parameters.

For each column to be created:

=over

=item *

C<name> - The name of the column.

=item *

C<type> - An Amazon Keyspaces data type. For more information, see Data
types
(https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types)
in the I<Amazon Keyspaces Developer Guide>.

=back

The primary key of the table consists of the following columns:

=over

=item *

C<partitionKeys> - The partition key can be a single column, or it can
be a compound value composed of two or more columns. The partition key
portion of the primary key is required and determines how Amazon
Keyspaces stores your data.

=item *

C<name> - The name of each partition key column.

=item *

C<clusteringKeys> - The optional clustering column portion of your
primary key determines how the data is clustered and sorted within each
partition.

=item *

C<name> - The name of the clustering column.

=item *

C<orderBy> - Sets the ascendant (C<ASC>) or descendant (C<DESC>) order
modifier.

To define a column as static use C<staticColumns> - Static columns
store values that are shared by all rows in the same partition:

=item *

C<name> - The name of the column.

=item *

C<type> - An Amazon Keyspaces data type.

=back




=head2 B<REQUIRED> TableName => Str

The name of the table.



=head2 Tags => ArrayRef[L<Paws::Keyspaces::Tag>]

A list of key-value pair tags to be attached to the resource.

For more information, see Adding tags and labels to Amazon Keyspaces
resources
(https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html)
in the I<Amazon Keyspaces Developer Guide>.



=head2 Ttl => L<Paws::Keyspaces::TimeToLive>

Enables Time to Live custom settings for the table. The options are:

=over

=item *

C<status:enabled>

=item *

C<status:disabled>

=back

The default is C<status:disabled>. After C<ttl> is enabled, you can't
disable it for the table.

For more information, see Expiring data by using Amazon Keyspaces Time
to Live (TTL)
(https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html) in the
I<Amazon Keyspaces Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTable in L<Paws::Keyspaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


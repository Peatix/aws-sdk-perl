
package Paws::DynamoDB::UpdateTable;
  use Moose;
  has AttributeDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeDefinition]');
  has BillingMode => (is => 'ro', isa => 'Str');
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool');
  has GlobalSecondaryIndexUpdates => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::GlobalSecondaryIndexUpdate]');
  has MultiRegionConsistency => (is => 'ro', isa => 'Str');
  has OnDemandThroughput => (is => 'ro', isa => 'Paws::DynamoDB::OnDemandThroughput');
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughput');
  has ReplicaUpdates => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicationGroupUpdate]');
  has SSESpecification => (is => 'ro', isa => 'Paws::DynamoDB::SSESpecification');
  has StreamSpecification => (is => 'ro', isa => 'Paws::DynamoDB::StreamSpecification');
  has TableClass => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has WarmThroughput => (is => 'ro', isa => 'Paws::DynamoDB::WarmThroughput');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateTableOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateTable - Arguments for method UpdateTable on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTable on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method UpdateTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTable.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
   # To modify a table's provisioned throughput
   # This example increases the provisioned read and write capacity on the Music
   # table.
    my $UpdateTableOutput = $dynamodb->UpdateTable(
      'ProvisionedThroughput' => {
        'ReadCapacityUnits'  => 10,
        'WriteCapacityUnits' => 10
      },
      'TableName' => 'MusicCollection'
    );

    # Results:
    my $TableDescription = $UpdateTableOutput->TableDescription;

    # Returns a L<Paws::DynamoDB::UpdateTableOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/UpdateTable>

=head1 ATTRIBUTES


=head2 AttributeDefinitions => ArrayRef[L<Paws::DynamoDB::AttributeDefinition>]

An array of attributes that describe the key schema for the table and
indexes. If you are adding a new global secondary index to the table,
C<AttributeDefinitions> must include the key element(s) of the new
index.



=head2 BillingMode => Str

Controls how you are charged for read and write throughput and how you
manage capacity. When switching from pay-per-request to provisioned
capacity, initial provisioned capacity values must be set. The initial
provisioned capacity values are estimated based on the consumed read
and write capacity of your table and global secondary indexes over the
past 30 minutes.

=over

=item *

C<PAY_PER_REQUEST> - We recommend using C<PAY_PER_REQUEST> for most
DynamoDB workloads. C<PAY_PER_REQUEST> sets the billing mode to
On-demand capacity mode
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode.html).

=item *

C<PROVISIONED> - We recommend using C<PROVISIONED> for steady workloads
with predictable growth where capacity requirements can be reliably
forecasted. C<PROVISIONED> sets the billing mode to Provisioned
capacity mode
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html).

=back


Valid values are: C<"PROVISIONED">, C<"PAY_PER_REQUEST">

=head2 DeletionProtectionEnabled => Bool

Indicates whether deletion protection is to be enabled (true) or
disabled (false) on the table.



=head2 GlobalSecondaryIndexUpdates => ArrayRef[L<Paws::DynamoDB::GlobalSecondaryIndexUpdate>]

An array of one or more global secondary indexes for the table. For
each index in the array, you can request one action:

=over

=item *

C<Create> - add a new global secondary index to the table.

=item *

C<Update> - modify the provisioned throughput settings of an existing
global secondary index.

=item *

C<Delete> - remove a global secondary index from the table.

=back

You can create or delete only one global secondary index per
C<UpdateTable> operation.

For more information, see Managing Global Secondary Indexes
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 MultiRegionConsistency => Str

Specifies the consistency mode for a new global table. This parameter
is only valid when you create a global table by specifying one or more
Create
(https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_ReplicationGroupUpdate.html#DDB-Type-ReplicationGroupUpdate-Create)
actions in the ReplicaUpdates
(https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_UpdateTable.html#DDB-UpdateTable-request-ReplicaUpdates)
action list.

You can specify one of the following consistency modes:

=over

=item *

C<EVENTUAL>: Configures a new global table for multi-Region eventual
consistency. This is the default consistency mode for global tables.

=item *

C<STRONG>: Configures a new global table for multi-Region strong
consistency (preview).

Multi-Region strong consistency (MRSC) is a new DynamoDB global tables
capability currently available in preview mode. For more information,
see Global tables multi-Region strong consistency
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/PreviewFeatures.html#multi-region-strong-consistency-gt).

=back

If you don't specify this parameter, the global table consistency mode
defaults to C<EVENTUAL>.

Valid values are: C<"EVENTUAL">, C<"STRONG">

=head2 OnDemandThroughput => L<Paws::DynamoDB::OnDemandThroughput>

Updates the maximum number of read and write units for the specified
table in on-demand capacity mode. If you use this parameter, you must
specify C<MaxReadRequestUnits>, C<MaxWriteRequestUnits>, or both.



=head2 ProvisionedThroughput => L<Paws::DynamoDB::ProvisionedThroughput>

The new provisioned throughput settings for the specified table or
index.



=head2 ReplicaUpdates => ArrayRef[L<Paws::DynamoDB::ReplicationGroupUpdate>]

A list of replica update actions (create, delete, or update) for the
table.

For global tables, this property only applies to global tables using
Version 2019.11.21 (Current version).



=head2 SSESpecification => L<Paws::DynamoDB::SSESpecification>

The new server-side encryption settings for the specified table.



=head2 StreamSpecification => L<Paws::DynamoDB::StreamSpecification>

Represents the DynamoDB Streams configuration for the table.

You receive a C<ValidationException> if you try to enable a stream on a
table that already has a stream, or if you try to disable a stream on a
table that doesn't have a stream.



=head2 TableClass => Str

The table class of the table to be updated. Valid values are
C<STANDARD> and C<STANDARD_INFREQUENT_ACCESS>.

Valid values are: C<"STANDARD">, C<"STANDARD_INFREQUENT_ACCESS">

=head2 B<REQUIRED> TableName => Str

The name of the table to be updated. You can also provide the Amazon
Resource Name (ARN) of the table in this parameter.



=head2 WarmThroughput => L<Paws::DynamoDB::WarmThroughput>

Represents the warm throughput (in read units per second and write
units per second) for updating a table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTable in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


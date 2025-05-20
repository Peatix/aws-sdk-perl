
package Paws::TimestreamWrite::UpdateTable;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has MagneticStoreWriteProperties => (is => 'ro', isa => 'Paws::TimestreamWrite::MagneticStoreWriteProperties');
  has RetentionProperties => (is => 'ro', isa => 'Paws::TimestreamWrite::RetentionProperties');
  has Schema => (is => 'ro', isa => 'Paws::TimestreamWrite::Schema');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamWrite::UpdateTableResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::UpdateTable - Arguments for method UpdateTable on L<Paws::TimestreamWrite>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTable on the
L<Amazon Timestream Write|Paws::TimestreamWrite> service. Use the attributes of this class
as arguments to method UpdateTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTable.

=head1 SYNOPSIS

    my $ingest.timestream = Paws->service('TimestreamWrite');
    my $UpdateTableResponse = $ingest . timestream->UpdateTable(
      DatabaseName                 => 'MyResourceName',
      TableName                    => 'MyResourceName',
      MagneticStoreWriteProperties => {
        EnableMagneticStoreWrites         => 1,
        MagneticStoreRejectedDataLocation => {
          S3Configuration => {
            BucketName       => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
            EncryptionOption => 'SSE_S3',    # values: SSE_S3, SSE_KMS; OPTIONAL
            KmsKeyId => 'MyStringValue2048',    # min: 1, max: 2048; OPTIONAL
            ObjectKeyPrefix =>
              'MyS3ObjectKeyPrefix',            # min: 1, max: 928; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      RetentionProperties => {
        MagneticStoreRetentionPeriodInDays => 1,    # min: 1, max: 73000
        MemoryStoreRetentionPeriodInHours  => 1,    # min: 1, max: 8766

      },    # OPTIONAL
      Schema => {
        CompositePartitionKey => [
          {
            Type                => 'DIMENSION',    # values: DIMENSION, MEASURE
            EnforcementInRecord =>
              'REQUIRED',    # values: REQUIRED, OPTIONAL; OPTIONAL
            Name => 'MySchemaName',    # min: 1; OPTIONAL
          },
          ...
        ],    # min: 1; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Table = $UpdateTableResponse->Table;

    # Returns a L<Paws::TimestreamWrite::UpdateTableResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ingest.timestream/UpdateTable>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

The name of the Timestream database.



=head2 MagneticStoreWriteProperties => L<Paws::TimestreamWrite::MagneticStoreWriteProperties>

Contains properties to set on the table when enabling magnetic store
writes.



=head2 RetentionProperties => L<Paws::TimestreamWrite::RetentionProperties>

The retention duration of the memory store and the magnetic store.



=head2 Schema => L<Paws::TimestreamWrite::Schema>

The schema of the table.



=head2 B<REQUIRED> TableName => Str

The name of the Timestream table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTable in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


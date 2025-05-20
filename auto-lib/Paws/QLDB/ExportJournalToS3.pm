
package Paws::QLDB::ExportJournalToS3;
  use Moose;
  has ExclusiveEndTime => (is => 'ro', isa => 'Str', required => 1);
  has InclusiveStartTime => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has OutputFormat => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has S3ExportConfiguration => (is => 'ro', isa => 'Paws::QLDB::S3ExportConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportJournalToS3');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ledgers/{name}/journal-s3-exports');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QLDB::ExportJournalToS3Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ExportJournalToS3 - Arguments for method ExportJournalToS3 on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportJournalToS3 on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method ExportJournalToS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportJournalToS3.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $ExportJournalToS3Response = $qldb->ExportJournalToS3(
      ExclusiveEndTime      => '1970-01-01T01:00:00',
      InclusiveStartTime    => '1970-01-01T01:00:00',
      Name                  => 'MyLedgerName',
      RoleArn               => 'MyArn',
      S3ExportConfiguration => {
        Bucket                  => 'MyS3Bucket',    # min: 3, max: 255
        EncryptionConfiguration => {
          ObjectEncryptionType =>
            'SSE_KMS',    # values: SSE_KMS, SSE_S3, NO_ENCRYPTION
          KmsKeyArn => 'MyArn',    # min: 20, max: 1600
        },
        Prefix => 'MyS3Prefix',    # max: 128

      },
      OutputFormat => 'ION_BINARY',    # OPTIONAL
    );

    # Results:
    my $ExportId = $ExportJournalToS3Response->ExportId;

    # Returns a L<Paws::QLDB::ExportJournalToS3Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/ExportJournalToS3>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExclusiveEndTime => Str

The exclusive end date and time for the range of journal contents to
export.

The C<ExclusiveEndTime> must be in C<ISO 8601> date and time format and
in Universal Coordinated Time (UTC). For example:
C<2019-06-13T21:36:34Z>.

The C<ExclusiveEndTime> must be less than or equal to the current UTC
date and time.



=head2 B<REQUIRED> InclusiveStartTime => Str

The inclusive start date and time for the range of journal contents to
export.

The C<InclusiveStartTime> must be in C<ISO 8601> date and time format
and in Universal Coordinated Time (UTC). For example:
C<2019-06-13T21:36:34Z>.

The C<InclusiveStartTime> must be before C<ExclusiveEndTime>.

If you provide an C<InclusiveStartTime> that is before the ledger's
C<CreationDateTime>, Amazon QLDB defaults it to the ledger's
C<CreationDateTime>.



=head2 B<REQUIRED> Name => Str

The name of the ledger.



=head2 OutputFormat => Str

The output format of your exported journal data. A journal export job
can write the data objects in either the text or binary representation
of Amazon Ion
(https://docs.aws.amazon.com/qldb/latest/developerguide/ion.html)
format, or in JSON Lines (https://jsonlines.org/) text format.

Default: C<ION_TEXT>

In JSON Lines format, each journal block in an exported data object is
a valid JSON object that is delimited by a newline. You can use this
format to directly integrate JSON exports with analytics tools such as
Amazon Athena and Glue because these services can parse
newline-delimited JSON automatically.

Valid values are: C<"ION_BINARY">, C<"ION_TEXT">, C<"JSON">

=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants QLDB
permissions for a journal export job to do the following:

=over

=item *

Write objects into your Amazon S3 bucket.

=item *

(Optional) Use your customer managed key in Key Management Service
(KMS) for server-side encryption of your exported data.

=back

To pass a role to QLDB when requesting a journal export, you must have
permissions to perform the C<iam:PassRole> action on the IAM role
resource. This is required for all journal export requests.



=head2 B<REQUIRED> S3ExportConfiguration => L<Paws::QLDB::S3ExportConfiguration>

The configuration settings of the Amazon S3 bucket destination for your
export request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportJournalToS3 in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


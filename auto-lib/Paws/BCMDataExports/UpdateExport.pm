
package Paws::BCMDataExports::UpdateExport;
  use Moose;
  has Export => (is => 'ro', isa => 'Paws::BCMDataExports::Export', required => 1);
  has ExportArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMDataExports::UpdateExportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::UpdateExport - Arguments for method UpdateExport on L<Paws::BCMDataExports>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateExport on the
L<AWS Billing and Cost Management Data Exports|Paws::BCMDataExports> service. Use the attributes of this class
as arguments to method UpdateExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateExport.

=head1 SYNOPSIS

    my $bcm-data-exports = Paws->service('BCMDataExports');
    my $UpdateExportResponse = $bcm -data-exports->UpdateExport(
      Export => {
        DataQuery => {
          QueryStatement      => 'MyQueryStatement',    # min: 1, max: 36000
          TableConfigurations => {
            'MyTableName' => {
              'MyTableProperty' =>
                'MyGenericString',    # key: max: 1024, value: max: 1024
            },    # key: max: 1024
          },    # OPTIONAL
        },
        DestinationConfigurations => {
          S3Destination => {
            S3Bucket               => 'MyGenericString',    # max: 1024
            S3OutputConfigurations => {
              Compression => 'GZIP',              # values: GZIP, PARQUET
              Format      => 'TEXT_OR_CSV',       # values: TEXT_OR_CSV, PARQUET
              OutputType  => 'CUSTOM',            # values: CUSTOM
              Overwrite   => 'CREATE_NEW_REPORT'
              ,    # values: CREATE_NEW_REPORT, OVERWRITE_REPORT

            },
            S3Prefix => 'MyGenericString',    # max: 1024
            S3Region => 'MyGenericString',    # max: 1024

          },

        },
        Name           => 'MyExportName',    # min: 1, max: 128
        RefreshCadence => {
          Frequency => 'SYNCHRONOUS',        # values: SYNCHRONOUS

        },
        Description => 'MyGenericString',    # max: 1024
        ExportArn   => 'MyArn',              # min: 20, max: 2048; OPTIONAL
      },
      ExportArn => 'MyArn',

    );

    # Results:
    my $ExportArn = $UpdateExportResponse->ExportArn;

    # Returns a L<Paws::BCMDataExports::UpdateExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports/UpdateExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Export => L<Paws::BCMDataExports::Export>

The name and query details for the export.



=head2 B<REQUIRED> ExportArn => Str

The Amazon Resource Name (ARN) for this export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateExport in L<Paws::BCMDataExports>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


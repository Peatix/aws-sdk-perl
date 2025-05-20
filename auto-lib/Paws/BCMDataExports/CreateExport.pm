
package Paws::BCMDataExports::CreateExport;
  use Moose;
  has Export => (is => 'ro', isa => 'Paws::BCMDataExports::Export', required => 1);
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::BCMDataExports::ResourceTag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BCMDataExports::CreateExportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMDataExports::CreateExport - Arguments for method CreateExport on L<Paws::BCMDataExports>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExport on the
L<AWS Billing and Cost Management Data Exports|Paws::BCMDataExports> service. Use the attributes of this class
as arguments to method CreateExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExport.

=head1 SYNOPSIS

    my $bcm-data-exports = Paws->service('BCMDataExports');
    my $CreateExportResponse = $bcm -data-exports->CreateExport(
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
      ResourceTags => [
        {
          Key   => 'MyResourceTagKey',       # min: 1, max: 128
          Value => 'MyResourceTagValue',     # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ExportArn = $CreateExportResponse->ExportArn;

    # Returns a L<Paws::BCMDataExports::CreateExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports/CreateExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Export => L<Paws::BCMDataExports::Export>

The details of the export, including data query, name, description, and
destination configuration.



=head2 ResourceTags => ArrayRef[L<Paws::BCMDataExports::ResourceTag>]

An optional list of tags to associate with the specified export. Each
tag consists of a key and a value, and each key must be unique for the
resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExport in L<Paws::BCMDataExports>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


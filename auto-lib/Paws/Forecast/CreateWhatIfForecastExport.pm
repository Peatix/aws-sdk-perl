
package Paws::Forecast::CreateWhatIfForecastExport;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::Forecast::DataDestination', required => 1);
  has Format => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Tag]');
  has WhatIfForecastArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has WhatIfForecastExportName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWhatIfForecastExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreateWhatIfForecastExportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateWhatIfForecastExport - Arguments for method CreateWhatIfForecastExport on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWhatIfForecastExport on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreateWhatIfForecastExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWhatIfForecastExport.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreateWhatIfForecastExportResponse =
      $forecast->CreateWhatIfForecastExport(
      Destination => {
        S3Config => {
          Path      => 'MyS3Path',       # min: 7, max: 4096
          RoleArn   => 'MyArn',          # max: 256
          KMSKeyArn => 'MyKMSKeyArn',    # max: 256; OPTIONAL
        },

      },
      WhatIfForecastArns => [
        'MyLongArn', ...                 # max: 300
      ],
      WhatIfForecastExportName => 'MyName',
      Format                   => 'MyFormat',    # OPTIONAL
      Tags                     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $WhatIfForecastExportArn =
      $CreateWhatIfForecastExportResponse->WhatIfForecastExportArn;

    # Returns a L<Paws::Forecast::CreateWhatIfForecastExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreateWhatIfForecastExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => L<Paws::Forecast::DataDestination>

The location where you want to save the forecast and an Identity and
Access Management (IAM) role that Amazon Forecast can assume to access
the location. The forecast must be exported to an Amazon S3 bucket.

If encryption is used, C<Destination> must include an Key Management
Service (KMS) key. The IAM role must allow Amazon Forecast permission
to access the key.



=head2 Format => Str

The format of the exported data, CSV or PARQUET.



=head2 Tags => ArrayRef[L<Paws::Forecast::Tag>]

A list of tags
(https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html)
to apply to the what if forecast.



=head2 B<REQUIRED> WhatIfForecastArns => ArrayRef[Str|Undef]

The list of what-if forecast Amazon Resource Names (ARNs) to export.



=head2 B<REQUIRED> WhatIfForecastExportName => Str

The name of the what-if forecast to export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWhatIfForecastExport in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


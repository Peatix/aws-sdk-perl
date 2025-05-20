
package Paws::SageMakerGeospatial::StartEarthObservationJob;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has InputConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::InputConfigInput', required => 1);
  has JobConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::JobConfigInput', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SageMakerGeospatial::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartEarthObservationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/earth-observation-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerGeospatial::StartEarthObservationJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::StartEarthObservationJob - Arguments for method StartEarthObservationJob on L<Paws::SageMakerGeospatial>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartEarthObservationJob on the
L<Amazon SageMaker geospatial capabilities|Paws::SageMakerGeospatial> service. Use the attributes of this class
as arguments to method StartEarthObservationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartEarthObservationJob.

=head1 SYNOPSIS

    my $sagemaker-geospatial = Paws->service('SageMakerGeospatial');
    my $StartEarthObservationJobOutput =
      $sagemaker -geospatial->StartEarthObservationJob(
      ExecutionRoleArn => 'MyExecutionRoleArn',
      InputConfig      => {
        PreviousEarthObservationJobArn => 'MyEarthObservationJobArn', # OPTIONAL
        RasterDataCollectionQuery      => {
          RasterDataCollectionArn => 'MyDataCollectionArn',
          TimeRangeFilter         => {
            EndTime   => '1970-01-01T01:00:00',
            StartTime => '1970-01-01T01:00:00',

          },
          AreaOfInterest => {
            AreaOfInterestGeometry => {
              MultiPolygonGeometry => {
                Coordinates => [
                  [
                    [
                      [ 1, ... ], ...    # min: 2, max: 2
                    ],
                    ...                  # min: 4
                  ],
                  ...                    # min: 1
                ],

              },    # OPTIONAL
              PolygonGeometry => {
                Coordinates => [
                  [
                    [ 1, ... ], ...    # min: 2, max: 2
                  ],
                  ...                  # min: 4
                ],    # min: 1

              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          PropertyFilters => {
            LogicalOperator => 'AND',    # values: AND; OPTIONAL
            Properties      => [
              {
                Property => {
                  EoCloudCover => {
                    LowerBound => 1.0,
                    UpperBound => 1.0,

                  },    # OPTIONAL
                  LandsatCloudCoverLand => {
                    LowerBound => 1.0,
                    UpperBound => 1.0,

                  },    # OPTIONAL
                  Platform => {
                    Value              => 'MyString',
                    ComparisonOperator => 'EQUALS'
                    ,    # values: EQUALS, NOT_EQUALS, STARTS_WITH; OPTIONAL
                  },    # OPTIONAL
                  ViewOffNadir => {
                    LowerBound => 1.0,
                    UpperBound => 1.0,

                  },    # OPTIONAL
                  ViewSunAzimuth => {
                    LowerBound => 1.0,
                    UpperBound => 1.0,

                  },    # OPTIONAL
                  ViewSunElevation => {
                    LowerBound => 1.0,
                    UpperBound => 1.0,

                  },    # OPTIONAL
                },

              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      JobConfig => {
        BandMathConfig => {
          CustomIndices => {
            Operations => [
              {
                Equation   => 'MyString',
                Name       => 'MyString',
                OutputType => 'INT32'
                ,    # values: INT32, FLOAT32, INT16, FLOAT64, UINT16; OPTIONAL
              },
              ...
            ],    # min: 1; OPTIONAL
          },    # OPTIONAL
          PredefinedIndices => [ 'MyString', ... ],    # min: 1; OPTIONAL
        },    # OPTIONAL
        CloudMaskingConfig => {

        },    # OPTIONAL
        CloudRemovalConfig => {
          AlgorithmName => 'INTERPOLATION',    # values: INTERPOLATION; OPTIONAL
          InterpolationValue => 'MyString',
          TargetBands        => [ 'MyString', ... ],    # min: 1; OPTIONAL
        },    # OPTIONAL
        GeoMosaicConfig => {
          AlgorithmName => 'NEAR'
          , # values: NEAR, BILINEAR, CUBIC, CUBICSPLINE, LANCZOS, AVERAGE, RMS, MODE, MAX, MIN, MED, Q1, Q3, SUM; OPTIONAL
          TargetBands => [ 'MyString', ... ],    # min: 1; OPTIONAL
        },    # OPTIONAL
        LandCoverSegmentationConfig => {

        },    # OPTIONAL
        ResamplingConfig => {
          OutputResolution => {
            UserDefined => {
              Unit  => 'METERS',    # values: METERS
              Value => 1.0,

            },

          },
          AlgorithmName => 'NEAR'
          , # values: NEAR, BILINEAR, CUBIC, CUBICSPLINE, LANCZOS, AVERAGE, RMS, MODE, MAX, MIN, MED, Q1, Q3, SUM; OPTIONAL
          TargetBands => [ 'MyString', ... ],    # min: 1; OPTIONAL
        },    # OPTIONAL
        StackConfig => {
          OutputResolution => {
            Predefined =>
              'HIGHEST',    # values: HIGHEST, LOWEST, AVERAGE; OPTIONAL
            UserDefined => {
              Unit  => 'METERS',    # values: METERS
              Value => 1.0,

            },
          },    # OPTIONAL
          TargetBands => [ 'MyString', ... ],    # min: 1; OPTIONAL
        },    # OPTIONAL
        TemporalStatisticsConfig => {
          Statistics => [
            'MEAN', ...    # values: MEAN, MEDIAN, STANDARD_DEVIATION
          ],    # min: 1
          GroupBy     => 'ALL',                  # values: ALL, YEARLY; OPTIONAL
          TargetBands => [ 'MyString', ... ],    # min: 1; OPTIONAL
        },    # OPTIONAL
        ZonalStatisticsConfig => {
          Statistics => [
            'MEAN',
            ...    # values: MEAN, MEDIAN, STANDARD_DEVIATION, MAX, MIN, SUM
          ],    # min: 1
          ZoneS3Path         => 'MyS3Uri',
          TargetBands        => [ 'MyString', ... ],    # min: 1; OPTIONAL
          ZoneS3PathKmsKeyId => 'MyKmsKey',             # max: 2048; OPTIONAL
        },    # OPTIONAL
      },
      Name        => 'MyStartEarthObservationJobInputNameString',
      ClientToken =>
        'MyStartEarthObservationJobInputClientTokenString',    # OPTIONAL
      KmsKeyId => 'MyKmsKey',                                  # OPTIONAL
      Tags     => { 'MyString' => 'MyString', },               # OPTIONAL
      );

    # Results:
    my $Arn               = $StartEarthObservationJobOutput->Arn;
    my $CreationTime      = $StartEarthObservationJobOutput->CreationTime;
    my $DurationInSeconds = $StartEarthObservationJobOutput->DurationInSeconds;
    my $ExecutionRoleArn  = $StartEarthObservationJobOutput->ExecutionRoleArn;
    my $InputConfig       = $StartEarthObservationJobOutput->InputConfig;
    my $JobConfig         = $StartEarthObservationJobOutput->JobConfig;
    my $KmsKeyId          = $StartEarthObservationJobOutput->KmsKeyId;
    my $Name              = $StartEarthObservationJobOutput->Name;
    my $Status            = $StartEarthObservationJobOutput->Status;
    my $Tags              = $StartEarthObservationJobOutput->Tags;

# Returns a L<Paws::SageMakerGeospatial::StartEarthObservationJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial/StartEarthObservationJob>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique token that guarantees that the call to this API is idempotent.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you specified for
the job.



=head2 B<REQUIRED> InputConfig => L<Paws::SageMakerGeospatial::InputConfigInput>

Input configuration information for the Earth Observation job.



=head2 B<REQUIRED> JobConfig => L<Paws::SageMakerGeospatial::JobConfigInput>

An object containing information about the job configuration.



=head2 KmsKeyId => Str

The Key Management Service key ID for server-side encryption.



=head2 B<REQUIRED> Name => Str

The name of the Earth Observation job.



=head2 Tags => L<Paws::SageMakerGeospatial::Tags>

Each tag consists of a key and a value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartEarthObservationJob in L<Paws::SageMakerGeospatial>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


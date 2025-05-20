
package Paws::LookoutMetrics::DetectMetricSetConfig;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', required => 1);
  has AutoDetectionMetricSource => (is => 'ro', isa => 'Paws::LookoutMetrics::AutoDetectionMetricSource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectMetricSetConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DetectMetricSetConfig');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::DetectMetricSetConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::DetectMetricSetConfig - Arguments for method DetectMetricSetConfig on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectMetricSetConfig on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method DetectMetricSetConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectMetricSetConfig.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $DetectMetricSetConfigResponse = $lookoutmetrics->DetectMetricSetConfig(
      AnomalyDetectorArn        => 'MyArn',
      AutoDetectionMetricSource => {
        S3SourceConfig => {
          HistoricalDataPathList => [
            'MyHistoricalDataPath', ...    # max: 1024
          ],    # min: 1, max: 1; OPTIONAL
          TemplatedPathList => [
            'MyTemplatedPath', ...    # max: 1024
          ],    # min: 1, max: 1; OPTIONAL
        },    # OPTIONAL
      },

    );

    # Results:
    my $DetectedMetricSetConfig =
      $DetectMetricSetConfigResponse->DetectedMetricSetConfig;

    # Returns a L<Paws::LookoutMetrics::DetectMetricSetConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/DetectMetricSetConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorArn => Str

An anomaly detector ARN.



=head2 B<REQUIRED> AutoDetectionMetricSource => L<Paws::LookoutMetrics::AutoDetectionMetricSource>

A data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectMetricSetConfig in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


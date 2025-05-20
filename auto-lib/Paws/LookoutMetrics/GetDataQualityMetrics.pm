
package Paws::LookoutMetrics::GetDataQualityMetrics;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', required => 1);
  has MetricSetArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataQualityMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetDataQualityMetrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::GetDataQualityMetricsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::GetDataQualityMetrics - Arguments for method GetDataQualityMetrics on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataQualityMetrics on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method GetDataQualityMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataQualityMetrics.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $GetDataQualityMetricsResponse = $lookoutmetrics->GetDataQualityMetrics(
      AnomalyDetectorArn => 'MyArn',
      MetricSetArn       => 'MyArn',    # OPTIONAL
    );

    # Results:
    my $AnomalyDetectorDataQualityMetricList =
      $GetDataQualityMetricsResponse->AnomalyDetectorDataQualityMetricList;

    # Returns a L<Paws::LookoutMetrics::GetDataQualityMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/GetDataQualityMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorArn => Str

The Amazon Resource Name (ARN) of the anomaly detector that you want to
investigate.



=head2 MetricSetArn => Str

The Amazon Resource Name (ARN) of a specific data quality metric set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataQualityMetrics in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


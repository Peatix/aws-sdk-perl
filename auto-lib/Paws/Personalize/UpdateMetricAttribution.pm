
package Paws::Personalize::UpdateMetricAttribution;
  use Moose;
  has AddMetrics => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::MetricAttribute]', traits => ['NameInRequest'], request_name => 'addMetrics' );
  has MetricAttributionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricAttributionArn' );
  has MetricsOutputConfig => (is => 'ro', isa => 'Paws::Personalize::MetricAttributionOutput', traits => ['NameInRequest'], request_name => 'metricsOutputConfig' );
  has RemoveMetrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'removeMetrics' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMetricAttribution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::UpdateMetricAttributionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::UpdateMetricAttribution - Arguments for method UpdateMetricAttribution on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMetricAttribution on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method UpdateMetricAttribution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMetricAttribution.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $UpdateMetricAttributionResponse = $personalize->UpdateMetricAttribution(
      AddMetrics => [
        {
          EventType  => 'MyEventType',           # max: 256
          Expression => 'MyMetricExpression',    # max: 256
          MetricName => 'MyMetricName',          # max: 256

        },
        ...
      ],    # OPTIONAL
      MetricAttributionArn => 'MyArn',    # OPTIONAL
      MetricsOutputConfig  => {
        RoleArn           => 'MyRoleArn',    # max: 256
        S3DataDestination => {
          Path      => 'MyS3Location',       # max: 256
          KmsKeyArn => 'MyKmsKeyArn',        # max: 2048; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      RemoveMetrics => [
        'MyMetricName', ...    # max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $MetricAttributionArn =
      $UpdateMetricAttributionResponse->MetricAttributionArn;

    # Returns a L<Paws::Personalize::UpdateMetricAttributionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/UpdateMetricAttribution>

=head1 ATTRIBUTES


=head2 AddMetrics => ArrayRef[L<Paws::Personalize::MetricAttribute>]

Add new metric attributes to the metric attribution.



=head2 MetricAttributionArn => Str

The Amazon Resource Name (ARN) for the metric attribution to update.



=head2 MetricsOutputConfig => L<Paws::Personalize::MetricAttributionOutput>

An output config for the metric attribution.



=head2 RemoveMetrics => ArrayRef[Str|Undef]

Remove metric attributes from the metric attribution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMetricAttribution in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


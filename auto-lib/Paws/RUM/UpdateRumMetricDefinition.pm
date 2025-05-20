
package Paws::RUM::UpdateRumMetricDefinition;
  use Moose;
  has AppMonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AppMonitorName', required => 1);
  has Destination => (is => 'ro', isa => 'Str', required => 1);
  has DestinationArn => (is => 'ro', isa => 'Str');
  has MetricDefinition => (is => 'ro', isa => 'Paws::RUM::MetricDefinitionRequest', required => 1);
  has MetricDefinitionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRumMetricDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rummetrics/{AppMonitorName}/metrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::UpdateRumMetricDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::UpdateRumMetricDefinition - Arguments for method UpdateRumMetricDefinition on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRumMetricDefinition on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method UpdateRumMetricDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRumMetricDefinition.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $UpdateRumMetricDefinitionResponse = $rum->UpdateRumMetricDefinition(
      AppMonitorName   => 'MyAppMonitorName',
      Destination      => 'CloudWatch',
      MetricDefinition => {
        Name          => 'MyMetricName',    # min: 1, max: 255
        DimensionKeys => {
          'MyDimensionKey' =>
            'MyDimensionName',  # key: min: 1, max: 280, value: min: 1, max: 255
        },    # max: 29; OPTIONAL
        EventPattern => 'MyEventPattern',    # max: 4000; OPTIONAL
        Namespace    => 'MyNamespace',       # min: 1, max: 237; OPTIONAL
        UnitLabel    => 'MyUnitLabel',       # min: 1, max: 256; OPTIONAL
        ValueKey     => 'MyValueKey',        # min: 1, max: 280; OPTIONAL
      },
      MetricDefinitionId => 'MyMetricDefinitionId',
      DestinationArn     => 'MyDestinationArn',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/UpdateRumMetricDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppMonitorName => Str

The name of the CloudWatch RUM app monitor that sends these metrics.



=head2 B<REQUIRED> Destination => Str

The destination to send the metrics to. Valid values are C<CloudWatch>
and C<Evidently>. If you specify C<Evidently>, you must also specify
the ARN of the CloudWatchEvidently experiment that will receive the
metrics and an IAM role that has permission to write to the experiment.

Valid values are: C<"CloudWatch">, C<"Evidently">

=head2 DestinationArn => Str

This parameter is required if C<Destination> is C<Evidently>. If
C<Destination> is C<CloudWatch>, do not use this parameter.

This parameter specifies the ARN of the Evidently experiment that is to
receive the metrics. You must have already defined this experiment as a
valid destination. For more information, see PutRumMetricsDestination
(https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html).



=head2 B<REQUIRED> MetricDefinition => L<Paws::RUM::MetricDefinitionRequest>

A structure that contains the new definition that you want to use for
this metric.



=head2 B<REQUIRED> MetricDefinitionId => Str

The ID of the metric definition to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRumMetricDefinition in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


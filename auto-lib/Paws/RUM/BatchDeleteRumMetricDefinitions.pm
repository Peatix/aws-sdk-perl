
package Paws::RUM::BatchDeleteRumMetricDefinitions;
  use Moose;
  has AppMonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AppMonitorName', required => 1);
  has Destination => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'destination', required => 1);
  has DestinationArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'destinationArn');
  has MetricDefinitionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'metricDefinitionIds', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteRumMetricDefinitions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rummetrics/{AppMonitorName}/metrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::BatchDeleteRumMetricDefinitionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::BatchDeleteRumMetricDefinitions - Arguments for method BatchDeleteRumMetricDefinitions on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteRumMetricDefinitions on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method BatchDeleteRumMetricDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteRumMetricDefinitions.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $BatchDeleteRumMetricDefinitionsResponse =
      $rum->BatchDeleteRumMetricDefinitions(
      AppMonitorName      => 'MyAppMonitorName',
      Destination         => 'CloudWatch',
      MetricDefinitionIds => [
        'MyMetricDefinitionId', ...    # min: 1, max: 255
      ],
      DestinationArn => 'MyDestinationArn',    # OPTIONAL
      );

    # Results:
    my $Errors = $BatchDeleteRumMetricDefinitionsResponse->Errors;
    my $MetricDefinitionIds =
      $BatchDeleteRumMetricDefinitionsResponse->MetricDefinitionIds;

    # Returns a L<Paws::RUM::BatchDeleteRumMetricDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/BatchDeleteRumMetricDefinitions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppMonitorName => Str

The name of the CloudWatch RUM app monitor that is sending these
metrics.



=head2 B<REQUIRED> Destination => Str

Defines the destination where you want to stop sending the specified
metrics. Valid values are C<CloudWatch> and C<Evidently>. If you
specify C<Evidently>, you must also specify the ARN of the
CloudWatchEvidently experiment that is to be the destination and an IAM
role that has permission to write to the experiment.

Valid values are: C<"CloudWatch">, C<"Evidently">

=head2 DestinationArn => Str

This parameter is required if C<Destination> is C<Evidently>. If
C<Destination> is C<CloudWatch>, do not use this parameter.

This parameter specifies the ARN of the Evidently experiment that was
receiving the metrics that are being deleted.



=head2 B<REQUIRED> MetricDefinitionIds => ArrayRef[Str|Undef]

An array of structures which define the metrics that you want to stop
sending.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteRumMetricDefinitions in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::RUM::BatchGetRumMetricDefinitions;
  use Moose;
  has AppMonitorName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AppMonitorName', required => 1);
  has Destination => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'destination', required => 1);
  has DestinationArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'destinationArn');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetRumMetricDefinitions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rummetrics/{AppMonitorName}/metrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::BatchGetRumMetricDefinitionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::BatchGetRumMetricDefinitions - Arguments for method BatchGetRumMetricDefinitions on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetRumMetricDefinitions on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method BatchGetRumMetricDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetRumMetricDefinitions.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $BatchGetRumMetricDefinitionsResponse =
      $rum->BatchGetRumMetricDefinitions(
      AppMonitorName => 'MyAppMonitorName',
      Destination    => 'CloudWatch',
      DestinationArn => 'MyDestinationArn',    # OPTIONAL
      MaxResults     => 1,                     # OPTIONAL
      NextToken      => 'MyString',            # OPTIONAL
      );

    # Results:
    my $MetricDefinitions =
      $BatchGetRumMetricDefinitionsResponse->MetricDefinitions;
    my $NextToken = $BatchGetRumMetricDefinitionsResponse->NextToken;

    # Returns a L<Paws::RUM::BatchGetRumMetricDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/BatchGetRumMetricDefinitions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppMonitorName => Str

The name of the CloudWatch RUM app monitor that is sending the metrics.



=head2 B<REQUIRED> Destination => Str

The type of destination that you want to view metrics for. Valid values
are C<CloudWatch> and C<Evidently>.

Valid values are: C<"CloudWatch">, C<"Evidently">

=head2 DestinationArn => Str

This parameter is required if C<Destination> is C<Evidently>. If
C<Destination> is C<CloudWatch>, do not use this parameter.

This parameter specifies the ARN of the Evidently experiment that
corresponds to the destination.



=head2 MaxResults => Int

The maximum number of results to return in one operation. The default
is 50. The maximum that you can specify is 100.

To retrieve the remaining results, make another call with the returned
C<NextToken> value.



=head2 NextToken => Str

Use the token returned by the previous operation to request the next
page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetRumMetricDefinitions in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


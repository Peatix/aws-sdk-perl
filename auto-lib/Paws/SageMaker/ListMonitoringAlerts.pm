
package Paws::SageMaker::ListMonitoringAlerts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has MonitoringScheduleName => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMonitoringAlerts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListMonitoringAlertsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListMonitoringAlerts - Arguments for method ListMonitoringAlerts on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMonitoringAlerts on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListMonitoringAlerts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMonitoringAlerts.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListMonitoringAlertsResponse = $api . sagemaker->ListMonitoringAlerts(
      MonitoringScheduleName => 'MyMonitoringScheduleName',
      MaxResults             => 1,                            # OPTIONAL
      NextToken              => 'MyNextToken',                # OPTIONAL
    );

    # Results:
    my $MonitoringAlertSummaries =
      $ListMonitoringAlertsResponse->MonitoringAlertSummaries;
    my $NextToken = $ListMonitoringAlertsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListMonitoringAlertsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListMonitoringAlerts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to display. The default is 100.



=head2 B<REQUIRED> MonitoringScheduleName => Str

The name of a monitoring schedule.



=head2 NextToken => Str

If the result of the previous C<ListMonitoringAlerts> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of alerts in the history, use the token in the next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMonitoringAlerts in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


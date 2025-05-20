
package Paws::SageMaker::UpdateMonitoringAlert;
  use Moose;
  has DatapointsToAlert => (is => 'ro', isa => 'Int', required => 1);
  has EvaluationPeriod => (is => 'ro', isa => 'Int', required => 1);
  has MonitoringAlertName => (is => 'ro', isa => 'Str', required => 1);
  has MonitoringScheduleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMonitoringAlert');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateMonitoringAlertResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateMonitoringAlert - Arguments for method UpdateMonitoringAlert on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMonitoringAlert on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateMonitoringAlert.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMonitoringAlert.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateMonitoringAlertResponse = $api . sagemaker->UpdateMonitoringAlert(
      DatapointsToAlert      => 1,
      EvaluationPeriod       => 1,
      MonitoringAlertName    => 'MyMonitoringAlertName',
      MonitoringScheduleName => 'MyMonitoringScheduleName',

    );

    # Results:
    my $MonitoringAlertName =
      $UpdateMonitoringAlertResponse->MonitoringAlertName;
    my $MonitoringScheduleArn =
      $UpdateMonitoringAlertResponse->MonitoringScheduleArn;

    # Returns a L<Paws::SageMaker::UpdateMonitoringAlertResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateMonitoringAlert>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatapointsToAlert => Int

Within C<EvaluationPeriod>, how many execution failures will raise an
alert.



=head2 B<REQUIRED> EvaluationPeriod => Int

The number of most recent monitoring executions to consider when
evaluating alert status.



=head2 B<REQUIRED> MonitoringAlertName => Str

The name of a monitoring alert.



=head2 B<REQUIRED> MonitoringScheduleName => Str

The name of a monitoring schedule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMonitoringAlert in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


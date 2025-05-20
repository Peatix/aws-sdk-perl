
package Paws::Forecast::DescribeMonitor;
  use Moose;
  has MonitorArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMonitor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::DescribeMonitorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeMonitor - Arguments for method DescribeMonitor on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMonitor on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DescribeMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMonitor.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $DescribeMonitorResponse = $forecast->DescribeMonitor(
      MonitorArn => 'MyArn',

    );

    # Results:
    my $Baseline     = $DescribeMonitorResponse->Baseline;
    my $CreationTime = $DescribeMonitorResponse->CreationTime;
    my $EstimatedEvaluationTimeRemainingInMinutes =
      $DescribeMonitorResponse->EstimatedEvaluationTimeRemainingInMinutes;
    my $LastEvaluationState  = $DescribeMonitorResponse->LastEvaluationState;
    my $LastEvaluationTime   = $DescribeMonitorResponse->LastEvaluationTime;
    my $LastModificationTime = $DescribeMonitorResponse->LastModificationTime;
    my $Message              = $DescribeMonitorResponse->Message;
    my $MonitorArn           = $DescribeMonitorResponse->MonitorArn;
    my $MonitorName          = $DescribeMonitorResponse->MonitorName;
    my $ResourceArn          = $DescribeMonitorResponse->ResourceArn;
    my $Status               = $DescribeMonitorResponse->Status;

    # Returns a L<Paws::Forecast::DescribeMonitorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DescribeMonitor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorArn => Str

The Amazon Resource Name (ARN) of the monitor resource to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMonitor in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


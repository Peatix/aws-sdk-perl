
package Paws::Scheduler::GetSchedule;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'groupName');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schedules/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Scheduler::GetScheduleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::GetSchedule - Arguments for method GetSchedule on L<Paws::Scheduler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSchedule on the
L<Amazon EventBridge Scheduler|Paws::Scheduler> service. Use the attributes of this class
as arguments to method GetSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSchedule.

=head1 SYNOPSIS

    my $scheduler = Paws->service('Scheduler');
    my $GetScheduleOutput = $scheduler->GetSchedule(
      Name      => 'MyName',
      GroupName => 'MyScheduleGroupName',    # OPTIONAL
    );

    # Results:
    my $ActionAfterCompletion = $GetScheduleOutput->ActionAfterCompletion;
    my $Arn                   = $GetScheduleOutput->Arn;
    my $CreationDate          = $GetScheduleOutput->CreationDate;
    my $Description           = $GetScheduleOutput->Description;
    my $EndDate               = $GetScheduleOutput->EndDate;
    my $FlexibleTimeWindow    = $GetScheduleOutput->FlexibleTimeWindow;
    my $GroupName             = $GetScheduleOutput->GroupName;
    my $KmsKeyArn             = $GetScheduleOutput->KmsKeyArn;
    my $LastModificationDate  = $GetScheduleOutput->LastModificationDate;
    my $Name                  = $GetScheduleOutput->Name;
    my $ScheduleExpression    = $GetScheduleOutput->ScheduleExpression;
    my $ScheduleExpressionTimezone =
      $GetScheduleOutput->ScheduleExpressionTimezone;
    my $StartDate = $GetScheduleOutput->StartDate;
    my $State     = $GetScheduleOutput->State;
    my $Target    = $GetScheduleOutput->Target;

    # Returns a L<Paws::Scheduler::GetScheduleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scheduler/GetSchedule>

=head1 ATTRIBUTES


=head2 GroupName => Str

The name of the schedule group associated with this schedule. If you
omit this, EventBridge Scheduler assumes that the schedule is
associated with the default group.



=head2 B<REQUIRED> Name => Str

The name of the schedule to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSchedule in L<Paws::Scheduler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


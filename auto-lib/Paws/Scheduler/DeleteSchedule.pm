
package Paws::Scheduler::DeleteSchedule;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has GroupName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'groupName');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schedules/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Scheduler::DeleteScheduleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::DeleteSchedule - Arguments for method DeleteSchedule on L<Paws::Scheduler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSchedule on the
L<Amazon EventBridge Scheduler|Paws::Scheduler> service. Use the attributes of this class
as arguments to method DeleteSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSchedule.

=head1 SYNOPSIS

    my $scheduler = Paws->service('Scheduler');
    my $DeleteScheduleOutput = $scheduler->DeleteSchedule(
      Name        => 'MyName',
      ClientToken => 'MyClientToken',          # OPTIONAL
      GroupName   => 'MyScheduleGroupName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scheduler/DeleteSchedule>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. If you do not specify a client token, EventBridge
Scheduler uses a randomly generated token for the request to ensure
idempotency.



=head2 GroupName => Str

The name of the schedule group associated with this schedule. If you
omit this, the default schedule group is used.



=head2 B<REQUIRED> Name => Str

The name of the schedule to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSchedule in L<Paws::Scheduler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


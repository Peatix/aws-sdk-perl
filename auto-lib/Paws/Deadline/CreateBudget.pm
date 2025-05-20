
package Paws::Deadline::CreateBudget;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::Deadline::BudgetActionToAdd]', traits => ['NameInRequest'], request_name => 'actions', required => 1);
  has ApproximateDollarLimit => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'approximateDollarLimit', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has Schedule => (is => 'ro', isa => 'Paws::Deadline::BudgetSchedule', traits => ['NameInRequest'], request_name => 'schedule', required => 1);
  has UsageTrackingResource => (is => 'ro', isa => 'Paws::Deadline::UsageTrackingResource', traits => ['NameInRequest'], request_name => 'usageTrackingResource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBudget');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/budgets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateBudgetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateBudget - Arguments for method CreateBudget on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBudget on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateBudget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBudget.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateBudgetResponse = $deadline->CreateBudget(
      Actions => [
        {
          ThresholdPercentage => 1.0,                                 # max: 100
          Type                => 'STOP_SCHEDULING_AND_COMPLETE_TASKS'
          , # values: STOP_SCHEDULING_AND_COMPLETE_TASKS, STOP_SCHEDULING_AND_CANCEL_TASKS
          Description => 'MyDescription',    # max: 100; OPTIONAL
        },
        ...
      ],
      ApproximateDollarLimit => 1.0,
      DisplayName            => 'MyResourceName',
      FarmId                 => 'MyFarmId',
      Schedule               => {
        Fixed => {
          EndTime   => '1970-01-01T01:00:00',
          StartTime => '1970-01-01T01:00:00',

        },    # OPTIONAL
      },
      UsageTrackingResource => {
        QueueId => 'MyQueueId',    # OPTIONAL
      },
      ClientToken => 'MyClientToken',    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $BudgetId = $CreateBudgetResponse->BudgetId;

    # Returns a L<Paws::Deadline::CreateBudgetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateBudget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[L<Paws::Deadline::BudgetActionToAdd>]

The budget actions to specify what happens when the budget runs out.



=head2 B<REQUIRED> ApproximateDollarLimit => Num

The dollar limit based on consumed usage.



=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 Description => Str

The description of the budget.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> DisplayName => Str

The display name of the budget.

This field can store any content. Escape or encode this content before
displaying it on a webpage or any other system that might interpret the
content of this field.



=head2 B<REQUIRED> FarmId => Str

The farm ID to include in this budget.



=head2 B<REQUIRED> Schedule => L<Paws::Deadline::BudgetSchedule>

The schedule to associate with this budget.



=head2 B<REQUIRED> UsageTrackingResource => L<Paws::Deadline::UsageTrackingResource>

The queue ID provided to this budget to track usage.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBudget in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


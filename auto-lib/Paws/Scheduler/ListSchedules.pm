
package Paws::Scheduler::ListSchedules;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ScheduleGroup');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NamePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NamePrefix');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has State => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'State');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSchedules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schedules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Scheduler::ListSchedulesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::ListSchedules - Arguments for method ListSchedules on L<Paws::Scheduler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSchedules on the
L<Amazon EventBridge Scheduler|Paws::Scheduler> service. Use the attributes of this class
as arguments to method ListSchedules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSchedules.

=head1 SYNOPSIS

    my $scheduler = Paws->service('Scheduler');
    my $ListSchedulesOutput = $scheduler->ListSchedules(
      GroupName  => 'MyScheduleGroupName',    # OPTIONAL
      MaxResults => 1,                        # OPTIONAL
      NamePrefix => 'MyNamePrefix',           # OPTIONAL
      NextToken  => 'MyNextToken',            # OPTIONAL
      State      => 'ENABLED',                # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSchedulesOutput->NextToken;
    my $Schedules = $ListSchedulesOutput->Schedules;

    # Returns a L<Paws::Scheduler::ListSchedulesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scheduler/ListSchedules>

=head1 ATTRIBUTES


=head2 GroupName => Str

If specified, only lists the schedules whose associated schedule group
matches the given filter.



=head2 MaxResults => Int

If specified, limits the number of results returned by this operation.
The operation also returns a C<NextToken> which you can use in a
subsequent operation to retrieve the next set of results.



=head2 NamePrefix => Str

Schedule name prefix to return the filtered list of resources.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.



=head2 State => Str

If specified, only lists the schedules whose current state matches the
given filter.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSchedules in L<Paws::Scheduler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


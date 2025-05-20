
package Paws::Scheduler::ListScheduleGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NamePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NamePrefix');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListScheduleGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/schedule-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Scheduler::ListScheduleGroupsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::ListScheduleGroups - Arguments for method ListScheduleGroups on L<Paws::Scheduler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListScheduleGroups on the
L<Amazon EventBridge Scheduler|Paws::Scheduler> service. Use the attributes of this class
as arguments to method ListScheduleGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListScheduleGroups.

=head1 SYNOPSIS

    my $scheduler = Paws->service('Scheduler');
    my $ListScheduleGroupsOutput = $scheduler->ListScheduleGroups(
      MaxResults => 1,                              # OPTIONAL
      NamePrefix => 'MyScheduleGroupNamePrefix',    # OPTIONAL
      NextToken  => 'MyNextToken',                  # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListScheduleGroupsOutput->NextToken;
    my $ScheduleGroups = $ListScheduleGroupsOutput->ScheduleGroups;

    # Returns a L<Paws::Scheduler::ListScheduleGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scheduler/ListScheduleGroups>

=head1 ATTRIBUTES


=head2 MaxResults => Int

If specified, limits the number of results returned by this operation.
The operation also returns a C<NextToken> which you can use in a
subsequent operation to retrieve the next set of results.



=head2 NamePrefix => Str

The name prefix that you can use to return a filtered list of your
schedule groups.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListScheduleGroups in L<Paws::Scheduler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


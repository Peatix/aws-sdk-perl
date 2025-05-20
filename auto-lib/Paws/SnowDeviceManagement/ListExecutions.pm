
package Paws::SnowDeviceManagement::ListExecutions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has State => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'state');
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExecutions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/executions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SnowDeviceManagement::ListExecutionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::ListExecutions - Arguments for method ListExecutions on L<Paws::SnowDeviceManagement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExecutions on the
L<AWS Snow Device Management|Paws::SnowDeviceManagement> service. Use the attributes of this class
as arguments to method ListExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExecutions.

=head1 SYNOPSIS

    my $snow-device-management = Paws->service('SnowDeviceManagement');
    my $ListExecutionsOutput = $snow -device-management->ListExecutions(
      TaskId     => 'MyTaskId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      State      => 'QUEUED',         # OPTIONAL
    );

    # Results:
    my $Executions = $ListExecutionsOutput->Executions;
    my $NextToken  = $ListExecutionsOutput->NextToken;

    # Returns a L<Paws::SnowDeviceManagement::ListExecutionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snow-device-management/ListExecutions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of tasks to list per page.



=head2 NextToken => Str

A pagination token to continue to the next page of tasks.



=head2 State => Str

A structure used to filter the tasks by their current state.

Valid values are: C<"QUEUED">, C<"IN_PROGRESS">, C<"CANCELED">, C<"FAILED">, C<"SUCCEEDED">, C<"REJECTED">, C<"TIMED_OUT">

=head2 B<REQUIRED> TaskId => Str

The ID of the task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExecutions in L<Paws::SnowDeviceManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


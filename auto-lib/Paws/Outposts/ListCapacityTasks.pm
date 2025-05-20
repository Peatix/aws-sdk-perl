
package Paws::Outposts::ListCapacityTasks;
  use Moose;
  has CapacityTaskStatusFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'CapacityTaskStatusFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has OutpostIdentifierFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'OutpostIdentifierFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCapacityTasks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/capacity/tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::ListCapacityTasksOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListCapacityTasks - Arguments for method ListCapacityTasks on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCapacityTasks on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method ListCapacityTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCapacityTasks.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $ListCapacityTasksOutput = $outposts->ListCapacityTasks(
      CapacityTaskStatusFilter => [
        'REQUESTED',
        ... # values: REQUESTED, IN_PROGRESS, FAILED, COMPLETED, WAITING_FOR_EVACUATION, CANCELLATION_IN_PROGRESS, CANCELLED
      ],    # OPTIONAL
      MaxResults              => 1,                        # OPTIONAL
      NextToken               => 'MyToken',                # OPTIONAL
      OutpostIdentifierFilter => 'MyOutpostIdentifier',    # OPTIONAL
    );

    # Results:
    my $CapacityTasks = $ListCapacityTasksOutput->CapacityTasks;
    my $NextToken     = $ListCapacityTasksOutput->NextToken;

    # Returns a L<Paws::Outposts::ListCapacityTasksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/ListCapacityTasks>

=head1 ATTRIBUTES


=head2 CapacityTaskStatusFilter => ArrayRef[Str|Undef]

A list of statuses. For example, C<REQUESTED> or
C<WAITING_FOR_EVACUATION>.



=head2 MaxResults => Int





=head2 NextToken => Str





=head2 OutpostIdentifierFilter => Str

Filters the results by an Outpost ID or an Outpost ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCapacityTasks in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


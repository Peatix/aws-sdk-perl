
package Paws::Omics::ListRunTasks;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has StartingToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startingToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRunTasks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/run/{id}/task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListRunTasksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListRunTasks - Arguments for method ListRunTasks on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRunTasks on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListRunTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRunTasks.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListRunTasksResponse = $omics->ListRunTasks(
      Id            => 'MyRunId',
      MaxResults    => 1,                    # OPTIONAL
      StartingToken => 'MyTaskListToken',    # OPTIONAL
      Status        => 'PENDING',            # OPTIONAL
    );

    # Results:
    my $Items     = $ListRunTasksResponse->Items;
    my $NextToken = $ListRunTasksResponse->NextToken;

    # Returns a L<Paws::Omics::ListRunTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListRunTasks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The run's ID.



=head2 MaxResults => Int

The maximum number of run tasks to return in one page of results.



=head2 StartingToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 Status => Str

Filter the list by status.

Valid values are: C<"PENDING">, C<"STARTING">, C<"RUNNING">, C<"STOPPING">, C<"COMPLETED">, C<"CANCELLED">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRunTasks in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


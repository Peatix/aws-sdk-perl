
package Paws::Omics::ListRuns;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has RunGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'runGroupId');
  has StartingToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startingToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRuns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/run');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListRunsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListRuns - Arguments for method ListRuns on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRuns on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRuns.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListRunsResponse = $omics->ListRuns(
      MaxResults    => 1,                   # OPTIONAL
      Name          => 'MyRunName',         # OPTIONAL
      RunGroupId    => 'MyRunGroupId',      # OPTIONAL
      StartingToken => 'MyRunListToken',    # OPTIONAL
      Status        => 'PENDING',           # OPTIONAL
    );

    # Results:
    my $Items     = $ListRunsResponse->Items;
    my $NextToken = $ListRunsResponse->NextToken;

    # Returns a L<Paws::Omics::ListRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListRuns>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of runs to return in one page of results.



=head2 Name => Str

Filter the list by run name.



=head2 RunGroupId => Str

Filter the list by run group ID.



=head2 StartingToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 Status => Str

The status of a run.

Valid values are: C<"PENDING">, C<"STARTING">, C<"RUNNING">, C<"STOPPING">, C<"COMPLETED">, C<"DELETED">, C<"CANCELLED">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRuns in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


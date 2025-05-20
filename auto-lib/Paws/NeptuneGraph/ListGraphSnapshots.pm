
package Paws::NeptuneGraph::ListGraphSnapshots;
  use Moose;
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'graphIdentifier');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGraphSnapshots');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/snapshots');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::ListGraphSnapshotsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ListGraphSnapshots - Arguments for method ListGraphSnapshots on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGraphSnapshots on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method ListGraphSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGraphSnapshots.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $ListGraphSnapshotsOutput = $neptune -graph->ListGraphSnapshots(
      GraphIdentifier => 'MyGraphIdentifier',    # OPTIONAL
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $GraphSnapshots = $ListGraphSnapshotsOutput->GraphSnapshots;
    my $NextToken      = $ListGraphSnapshotsOutput->NextToken;

    # Returns a L<Paws::NeptuneGraph::ListGraphSnapshotsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/ListGraphSnapshots>

=head1 ATTRIBUTES


=head2 GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.



=head2 MaxResults => Int

The total number of records to return in the command's output.

If the total number of records available is more than the value
specified, C<nextToken> is provided in the command's output. To resume
pagination, provide the C<nextToken> output value in the C<nextToken>
argument of a subsequent command. Do not use the C<nextToken> response
element directly outside of the Amazon CLI.



=head2 NextToken => Str

Pagination token used to paginate output.

When this value is provided as input, the service returns results from
where the previous response left off. When this value is present in
output, it indicates that there are more results to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGraphSnapshots in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


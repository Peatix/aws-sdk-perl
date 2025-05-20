
package Paws::NeptuneGraph::GetQuery;
  use Moose;
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'graphIdentifier', required => 1);
  has QueryId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queryId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/queries/{queryId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::GetQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::GetQuery - Arguments for method GetQuery on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQuery on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method GetQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQuery.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $GetQueryOutput = $neptune -graph->GetQuery(
      GraphIdentifier => 'MyGraphIdentifier',
      QueryId         => 'MyString',

    );

    # Results:
    my $Elapsed     = $GetQueryOutput->Elapsed;
    my $Id          = $GetQueryOutput->Id;
    my $QueryString = $GetQueryOutput->QueryString;
    my $State       = $GetQueryOutput->State;
    my $Waited      = $GetQueryOutput->Waited;

    # Returns a L<Paws::NeptuneGraph::GetQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/GetQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.



=head2 B<REQUIRED> QueryId => Str

The ID of the query in question.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQuery in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


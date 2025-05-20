
package Paws::NeptuneGraph::CancelQuery;
  use Moose;
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'graphIdentifier', required => 1);
  has QueryId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'queryId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/queries/{queryId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::CancelQuery - Arguments for method CancelQuery on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelQuery on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method CancelQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelQuery.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    $neptune -graph->CancelQuery(
      GraphIdentifier => 'MyGraphIdentifier',
      QueryId         => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/CancelQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.



=head2 B<REQUIRED> QueryId => Str

The unique identifier of the query to cancel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelQuery in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


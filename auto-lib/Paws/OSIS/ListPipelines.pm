
package Paws::OSIS::ListPipelines;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelines');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2022-01-01/osis/listPipelines');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OSIS::ListPipelinesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::ListPipelines - Arguments for method ListPipelines on L<Paws::OSIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPipelines on the
L<Amazon OpenSearch Ingestion|Paws::OSIS> service. Use the attributes of this class
as arguments to method ListPipelines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPipelines.

=head1 SYNOPSIS

    my $osis = Paws->service('OSIS');
    my $ListPipelinesResponse = $osis->ListPipelines(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPipelinesResponse->NextToken;
    my $Pipelines = $ListPipelinesResponse->Pipelines;

    # Returns a L<Paws::OSIS::ListPipelinesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/osis/ListPipelines>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An optional parameter that specifies the maximum number of results to
return. You can use C<nextToken> to get the next page of results.



=head2 NextToken => Str

If your initial C<ListPipelines> operation returns a C<nextToken>, you
can include the returned C<nextToken> in subsequent C<ListPipelines>
operations, which returns results in the next page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPipelines in L<Paws::OSIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


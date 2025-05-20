
package Paws::Omics::ListAnnotationStores;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Omics::ListAnnotationStoresFilter', traits => ['NameInRequest'], request_name => 'filter');
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnnotationStores');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/annotationStores');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListAnnotationStoresResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListAnnotationStores - Arguments for method ListAnnotationStores on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnnotationStores on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListAnnotationStores.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnnotationStores.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListAnnotationStoresResponse = $omics->ListAnnotationStores(
      Filter => {
        Status => 'CREATING'
        ,    # values: CREATING, UPDATING, DELETING, ACTIVE, FAILED; OPTIONAL
      },    # OPTIONAL
      Ids => [
        'MyResourceIdentifier', ...    # min: 1, max: 50
      ],    # OPTIONAL
      MaxResults => 1,                                                # OPTIONAL
      NextToken  => 'MyListAnnotationStoresRequestNextTokenString',   # OPTIONAL
    );

    # Results:
    my $AnnotationStores = $ListAnnotationStoresResponse->AnnotationStores;
    my $NextToken        = $ListAnnotationStoresResponse->NextToken;

    # Returns a L<Paws::Omics::ListAnnotationStoresResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListAnnotationStores>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Omics::ListAnnotationStoresFilter>

A filter to apply to the list.



=head2 Ids => ArrayRef[Str|Undef]

IDs of stores to list.



=head2 MaxResults => Int

The maximum number of stores to return in one page of results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnnotationStores in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


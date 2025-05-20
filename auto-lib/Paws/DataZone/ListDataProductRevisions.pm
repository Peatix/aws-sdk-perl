
package Paws::DataZone::ListDataProductRevisions;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataProductRevisions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-products/{identifier}/revisions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListDataProductRevisionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListDataProductRevisions - Arguments for method ListDataProductRevisions on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataProductRevisions on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListDataProductRevisions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataProductRevisions.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListDataProductRevisionsOutput = $datazone->ListDataProductRevisions(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyDataProductId',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListDataProductRevisionsOutput->Items;
    my $NextToken = $ListDataProductRevisionsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListDataProductRevisionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListDataProductRevisions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain of the data product revisions that you want to
list.



=head2 B<REQUIRED> Identifier => Str

The ID of the data product revision.



=head2 MaxResults => Int

The maximum number of asset filters to return in a single call to
C<ListDataProductRevisions>. When the number of data product revisions
to be listed is greater than the value of C<MaxResults>, the response
contains a C<NextToken> value that you can use in a subsequent call to
C<ListDataProductRevisions> to list the next set of data product
revisions.



=head2 NextToken => Str

When the number of data product revisions is greater than the default
value for the C<MaxResults> parameter, or if you explicitly specify a
value for C<MaxResults> that is less than the number of data product
revisions, the response includes a pagination token named C<NextToken>.
You can specify this C<NextToken> value in a subsequent call to
C<ListDataProductRevisions> to list the next set of data product
revisions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataProductRevisions in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


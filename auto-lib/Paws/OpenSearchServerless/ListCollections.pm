
package Paws::OpenSearchServerless::ListCollections;
  use Moose;
  has CollectionFilters => (is => 'ro', isa => 'Paws::OpenSearchServerless::CollectionFilters', traits => ['NameInRequest'], request_name => 'collectionFilters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCollections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::ListCollectionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::ListCollections - Arguments for method ListCollections on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCollections on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method ListCollections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCollections.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $ListCollectionsResponse = $aoss->ListCollections(
      CollectionFilters => {
        Name   => 'MyCollectionName',    # min: 3, max: 32; OPTIONAL
        Status =>
          'CREATING',    # values: CREATING, DELETING, ACTIVE, FAILED; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CollectionSummaries = $ListCollectionsResponse->CollectionSummaries;
    my $NextToken           = $ListCollectionsResponse->NextToken;

    # Returns a L<Paws::OpenSearchServerless::ListCollectionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/ListCollections>

=head1 ATTRIBUTES


=head2 CollectionFilters => L<Paws::OpenSearchServerless::CollectionFilters>

A list of filter names and values that you can use for requests.



=head2 MaxResults => Int

The maximum number of results to return. Default is 20. You can use
C<nextToken> to get the next page of results.



=head2 NextToken => Str

If your initial C<ListCollections> operation returns a C<nextToken>,
you can include the returned C<nextToken> in subsequent
C<ListCollections> operations, which returns results in the next page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCollections in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


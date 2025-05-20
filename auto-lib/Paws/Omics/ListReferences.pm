
package Paws::Omics::ListReferences;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Omics::ReferenceFilter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ReferenceStoreId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'referenceStoreId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReferences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/referencestore/{referenceStoreId}/references');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListReferencesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReferences - Arguments for method ListReferences on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReferences on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListReferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReferences.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListReferencesResponse = $omics->ListReferences(
      ReferenceStoreId => 'MyReferenceStoreId',
      Filter           => {
        CreatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        CreatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
        Md5           => 'MyMd5',                  # min: 1, max: 255; OPTIONAL
        Name          => 'MyReferenceName',        # min: 3, max: 255; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListReferencesResponse->NextToken;
    my $References = $ListReferencesResponse->References;

    # Returns a L<Paws::Omics::ListReferencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListReferences>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Omics::ReferenceFilter>

A filter to apply to the list.



=head2 MaxResults => Int

The maximum number of references to return in one page of results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.



=head2 B<REQUIRED> ReferenceStoreId => Str

The references' reference store ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReferences in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


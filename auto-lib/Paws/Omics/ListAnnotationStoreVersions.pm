
package Paws::Omics::ListAnnotationStoreVersions;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Omics::ListAnnotationStoreVersionsFilter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnnotationStoreVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/annotationStore/{name}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::ListAnnotationStoreVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListAnnotationStoreVersions - Arguments for method ListAnnotationStoreVersions on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnnotationStoreVersions on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method ListAnnotationStoreVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnnotationStoreVersions.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $ListAnnotationStoreVersionsResponse =
      $omics->ListAnnotationStoreVersions(
      Name   => 'MyString',
      Filter => {
        Status => 'CREATING'
        ,    # values: CREATING, UPDATING, DELETING, ACTIVE, FAILED; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                                            # OPTIONAL
      NextToken  =>
        'MyListAnnotationStoreVersionsRequestNextTokenString',    # OPTIONAL
      );

    # Results:
    my $AnnotationStoreVersions =
      $ListAnnotationStoreVersionsResponse->AnnotationStoreVersions;
    my $NextToken = $ListAnnotationStoreVersionsResponse->NextToken;

    # Returns a L<Paws::Omics::ListAnnotationStoreVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/ListAnnotationStoreVersions>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Omics::ListAnnotationStoreVersionsFilter>

A filter to apply to the list of annotation store versions.



=head2 MaxResults => Int

The maximum number of annotation store versions to return in one page
of results.



=head2 B<REQUIRED> Name => Str

The name of an annotation store.



=head2 NextToken => Str

Specifies the pagination token from a previous request to retrieve the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnnotationStoreVersions in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::SageMaker::ListResourceCatalogs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceCatalogs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListResourceCatalogsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListResourceCatalogs - Arguments for method ListResourceCatalogs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceCatalogs on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListResourceCatalogs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceCatalogs.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListResourceCatalogsResponse = $api . sagemaker->ListResourceCatalogs(
      CreationTimeAfter  => '1970-01-01T01:00:00',      # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',      # OPTIONAL
      MaxResults         => 1,                          # OPTIONAL
      NameContains       => 'MyResourceCatalogName',    # OPTIONAL
      NextToken          => 'MyNextToken',              # OPTIONAL
      SortBy             => 'CreationTime',             # OPTIONAL
      SortOrder          => 'Ascending',                # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListResourceCatalogsResponse->NextToken;
    my $ResourceCatalogs = $ListResourceCatalogsResponse->ResourceCatalogs;

    # Returns a L<Paws::SageMaker::ListResourceCatalogsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListResourceCatalogs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Use this parameter to search for C<ResourceCatalog>s created after a
specific date and time.



=head2 CreationTimeBefore => Str

Use this parameter to search for C<ResourceCatalog>s created before a
specific date and time.



=head2 MaxResults => Int

The maximum number of results returned by C<ListResourceCatalogs>.



=head2 NameContains => Str

A string that partially matches one or more C<ResourceCatalog>s names.
Filters C<ResourceCatalog> by name.



=head2 NextToken => Str

A token to resume pagination of C<ListResourceCatalogs> results.



=head2 SortBy => Str

The value on which the resource catalog list is sorted.

Valid values are: C<"CreationTime">

=head2 SortOrder => Str

The order in which the resource catalogs are listed.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceCatalogs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::DataZone::ListAssetFilters;
  use Moose;
  has AssetIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assetIdentifier', required => 1);
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssetFilters');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListAssetFiltersOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListAssetFilters - Arguments for method ListAssetFilters on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssetFilters on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListAssetFilters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssetFilters.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListAssetFiltersOutput = $datazone->ListAssetFilters(
      AssetIdentifier  => 'MyAssetId',
      DomainIdentifier => 'MyDomainId',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
      Status           => 'VALID',                # OPTIONAL
    );

    # Results:
    my $Items     = $ListAssetFiltersOutput->Items;
    my $NextToken = $ListAssetFiltersOutput->NextToken;

    # Returns a L<Paws::DataZone::ListAssetFiltersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListAssetFilters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetIdentifier => Str

The ID of the data asset.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to list asset filters.



=head2 MaxResults => Int

The maximum number of asset filters to return in a single call to
C<ListAssetFilters>. When the number of asset filters to be listed is
greater than the value of C<MaxResults>, the response contains a
C<NextToken> value that you can use in a subsequent call to
C<ListAssetFilters> to list the next set of asset filters.



=head2 NextToken => Str

When the number of asset filters is greater than the default value for
the C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of asset filters, the
response includes a pagination token named C<NextToken>. You can
specify this C<NextToken> value in a subsequent call to
C<ListAssetFilters> to list the next set of asset filters.



=head2 Status => Str

The status of the asset filter.

Valid values are: C<"VALID">, C<"INVALID">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssetFilters in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::DataZone::Search;
  use Moose;
  has AdditionalAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'additionalAttributes');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Filters => (is => 'ro', isa => 'Paws::DataZone::FilterClause', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has OwningProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectIdentifier');
  has SearchIn => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::SearchInItem]', traits => ['NameInRequest'], request_name => 'searchIn');
  has SearchScope => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'searchScope', required => 1);
  has SearchText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'searchText');
  has Sort => (is => 'ro', isa => 'Paws::DataZone::SearchSort', traits => ['NameInRequest'], request_name => 'sort');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Search');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::SearchOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::Search - Arguments for method Search on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Search on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method Search.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Search.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $SearchOutput = $datazone->Search(
      DomainIdentifier     => 'MyDomainId',
      SearchScope          => 'ASSET',
      AdditionalAttributes => [
        'FORMS', ...    # values: FORMS, TIME_SERIES_DATA_POINT_FORMS
      ],    # OPTIONAL
      Filters => {
        And    => [ <FilterClause>, ... ],    # min: 1, max: 100; OPTIONAL
        Filter => {
          Attribute => 'MyAttribute',            # min: 1, max: 128
          Value     => 'MyFilterValueString',    # min: 1, max: 128

        },    # OPTIONAL
        Or => [ <FilterClause>, ... ],    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      MaxResults              => 1,                      # OPTIONAL
      NextToken               => 'MyPaginationToken',    # OPTIONAL
      OwningProjectIdentifier => 'MyProjectId',          # OPTIONAL
      SearchIn                => [
        {
          Attribute => 'MyAttribute',                    # min: 1, max: 128

        },
        ...
      ],    # OPTIONAL
      SearchText => 'MySearchText',    # OPTIONAL
      Sort       => {
        Attribute => 'MyAttribute',    # min: 1, max: 128
        Order     => 'ASCENDING',      # values: ASCENDING, DESCENDING; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Items           = $SearchOutput->Items;
    my $NextToken       = $SearchOutput->NextToken;
    my $TotalMatchCount = $SearchOutput->TotalMatchCount;

    # Returns a L<Paws::DataZone::SearchOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/Search>

=head1 ATTRIBUTES


=head2 AdditionalAttributes => ArrayRef[Str|Undef]

Specifies additional attributes for the C<Search> action.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 Filters => L<Paws::DataZone::FilterClause>

Specifies the search filters.



=head2 MaxResults => Int

The maximum number of results to return in a single call to C<Search>.
When the number of results to be listed is greater than the value of
C<MaxResults>, the response contains a C<NextToken> value that you can
use in a subsequent call to C<Search> to list the next set of results.



=head2 NextToken => Str

When the number of results is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of results, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to C<Search> to list the next
set of results.



=head2 OwningProjectIdentifier => Str

The identifier of the owning project specified for the search.



=head2 SearchIn => ArrayRef[L<Paws::DataZone::SearchInItem>]

The details of the search.



=head2 B<REQUIRED> SearchScope => Str

The scope of the search.

Valid values are: C<"ASSET">, C<"GLOSSARY">, C<"GLOSSARY_TERM">, C<"DATA_PRODUCT">

=head2 SearchText => Str

Specifies the text for which to search.



=head2 Sort => L<Paws::DataZone::SearchSort>

Specifies the way in which the search results are to be sorted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Search in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


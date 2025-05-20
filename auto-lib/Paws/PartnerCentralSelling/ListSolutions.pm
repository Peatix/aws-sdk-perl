
package Paws::PartnerCentralSelling::ListSolutions;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has Category => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Identifier => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Sort => (is => 'ro', isa => 'Paws::PartnerCentralSelling::SolutionSort');
  has Status => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSolutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::ListSolutionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListSolutions - Arguments for method ListSolutions on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSolutions on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method ListSolutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSolutions.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $ListSolutionsResponse = $partnercentral -selling->ListSolutions(
      Catalog    => 'MyCatalogIdentifier',
      Category   => [ 'MyString',             ... ],    # OPTIONAL
      Identifier => [ 'MySolutionIdentifier', ... ],    # OPTIONAL
      MaxResults => 1,                                  # OPTIONAL
      NextToken  => 'MyString',                         # OPTIONAL
      Sort       => {
        SortBy => 'Identifier'
        ,    # values: Identifier, Name, Status, Category, CreatedDate
        SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING

      },    # OPTIONAL
      Status => [
        'Active', ...    # values: Active, Inactive, Draft
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken         = $ListSolutionsResponse->NextToken;
    my $SolutionSummaries = $ListSolutionsResponse->SolutionSummaries;

    # Returns a L<Paws::PartnerCentralSelling::ListSolutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/ListSolutions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog associated with the request. This field takes a
string value from a predefined list: C<AWS> or C<Sandbox>. The catalog
determines which environment the solutions are listed in. Use C<AWS> to
list solutions in the Amazon Web Services catalog, and C<Sandbox> to
list solutions in a secure and isolated testing environment.



=head2 Category => ArrayRef[Str|Undef]

Filters the solutions based on the category to which they belong. This
allows partners to search for solutions within specific categories,
such as C<Software>, C<Consulting>, or C<Managed Services>.



=head2 Identifier => ArrayRef[Str|Undef]

Filters the solutions based on their unique identifier. Use this filter
to retrieve specific solutions by providing the solution's identifier
for accurate results.



=head2 MaxResults => Int

The maximum number of results returned by a single call. This value
must be provided in the next call to retrieve the next set of results.

Default: 20



=head2 NextToken => Str

A pagination token used to retrieve the next set of results in
subsequent calls. This token is included in the response only if there
are additional result pages available.



=head2 Sort => L<Paws::PartnerCentralSelling::SolutionSort>

Object that configures sorting done on the response. Default
C<Sort.SortBy> is C<Identifier>.



=head2 Status => ArrayRef[Str|Undef]

Filters solutions based on their status. This filter helps partners
manage their solution portfolios effectively.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSolutions in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


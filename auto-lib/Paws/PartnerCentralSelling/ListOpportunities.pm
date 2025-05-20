
package Paws::PartnerCentralSelling::ListOpportunities;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has CustomerCompanyName => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Identifier => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastModifiedDate => (is => 'ro', isa => 'Paws::PartnerCentralSelling::LastModifiedDate');
  has LifeCycleReviewStatus => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LifeCycleStage => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Sort => (is => 'ro', isa => 'Paws::PartnerCentralSelling::OpportunitySort');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOpportunities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::ListOpportunitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListOpportunities - Arguments for method ListOpportunities on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOpportunities on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method ListOpportunities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOpportunities.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $ListOpportunitiesResponse = $partnercentral -selling->ListOpportunities(
      Catalog             => 'MyCatalogIdentifier',
      CustomerCompanyName => [ 'MyString',                ... ],    # OPTIONAL
      Identifier          => [ 'MyOpportunityIdentifier', ... ],    # OPTIONAL
      LastModifiedDate    => {
        AfterLastModifiedDate  => '1970-01-01T01:00:00',            # OPTIONAL
        BeforeLastModifiedDate => '1970-01-01T01:00:00',            # OPTIONAL
      },    # OPTIONAL
      LifeCycleReviewStatus => [
        'Pending Submission',
        ... # values: Pending Submission, Submitted, In review, Approved, Rejected, Action Required
      ],    # OPTIONAL
      LifeCycleStage => [
        'Prospect',
        ... # values: Prospect, Qualified, Technical Validation, Business Validation, Committed, Launched, Closed Lost
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      Sort       => {
        SortBy => 'LastModifiedDate'
        ,    # values: LastModifiedDate, Identifier, CustomerCompanyName
        SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING

      },    # OPTIONAL
    );

    # Results:
    my $NextToken            = $ListOpportunitiesResponse->NextToken;
    my $OpportunitySummaries = $ListOpportunitiesResponse->OpportunitySummaries;

   # Returns a L<Paws::PartnerCentralSelling::ListOpportunitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/ListOpportunities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog associated with the request. This field takes a
string value from a predefined list: C<AWS> or C<Sandbox>. The catalog
determines which environment the opportunities are listed in. Use
C<AWS> for listing real opportunities in the Amazon Web Services
catalog, and C<Sandbox> for testing in secure, isolated environments.



=head2 CustomerCompanyName => ArrayRef[Str|Undef]

Filters the opportunities based on the customer's company name. This
allows partners to search for opportunities associated with a specific
customer by matching the provided company name string.



=head2 Identifier => ArrayRef[Str|Undef]

Filters the opportunities based on the opportunity identifier. This
allows partners to retrieve specific opportunities by providing their
unique identifiers, ensuring precise results.



=head2 LastModifiedDate => L<Paws::PartnerCentralSelling::LastModifiedDate>

Filters the opportunities based on their last modified date. This
filter helps retrieve opportunities that were updated after the
specified date, allowing partners to track recent changes or updates.



=head2 LifeCycleReviewStatus => ArrayRef[Str|Undef]

Filters the opportunities based on their current lifecycle approval
status. Use this filter to retrieve opportunities with statuses such as
C<Pending Submission>, C<In Review>, C<Action Required>, or
C<Approved>.



=head2 LifeCycleStage => ArrayRef[Str|Undef]

Filters the opportunities based on their lifecycle stage. This filter
allows partners to retrieve opportunities at various stages in the
sales cycle, such as C<Qualified>, C<Technical Validation>, C<Business
Validation>, or C<Closed Won>.



=head2 MaxResults => Int

Specifies the maximum number of results to return in a single call.
This limits the number of opportunities returned in the response to
avoid providing too many results at once.

Default: 20



=head2 NextToken => Str

A pagination token used to retrieve the next set of results in
subsequent calls. This token is included in the response only if there
are additional result pages available.



=head2 Sort => L<Paws::PartnerCentralSelling::OpportunitySort>

An object that specifies how the response is sorted. The default
C<Sort.SortBy> value is C<LastModifiedDate>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOpportunities in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::MarketplaceAgreement::SearchAgreements;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'catalog' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceAgreement::Filter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Sort => (is => 'ro', isa => 'Paws::MarketplaceAgreement::Sort', traits => ['NameInRequest'], request_name => 'sort' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchAgreements');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceAgreement::SearchAgreementsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceAgreement::SearchAgreements - Arguments for method SearchAgreements on L<Paws::MarketplaceAgreement>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchAgreements on the
L<AWS Marketplace Agreement Service|Paws::MarketplaceAgreement> service. Use the attributes of this class
as arguments to method SearchAgreements.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchAgreements.

=head1 SYNOPSIS

    my $agreement-marketplace = Paws->service('MarketplaceAgreement');
    my $SearchAgreementsOutput = $agreement -marketplace->SearchAgreements(
      Catalog => 'MyCatalog',    # OPTIONAL
      Filters => [
        {
          Name   => 'MyFilterName',    # min: 1, max: 32; OPTIONAL
          Values => [
            'MyFilterValue', ...       # min: 1, max: 64
          ],    # min: 1, max: 1; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Sort       => {
        SortBy    => 'MySortBy',      # min: 1, max: 255; OPTIONAL
        SortOrder => 'ASCENDING',     # values: ASCENDING, DESCENDING; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AgreementViewSummaries =
      $SearchAgreementsOutput->AgreementViewSummaries;
    my $NextToken = $SearchAgreementsOutput->NextToken;

    # Returns a L<Paws::MarketplaceAgreement::SearchAgreementsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/agreement-marketplace/SearchAgreements>

=head1 ATTRIBUTES


=head2 Catalog => Str

The catalog in which the agreement was created.



=head2 Filters => ArrayRef[L<Paws::MarketplaceAgreement::Filter>]

The filter name and value pair used to return a specific list of
results.

The following filters are supported:

=over

=item *

C<ResourceIdentifier> E<ndash> The unique identifier of the resource.

=item *

C<ResourceType> E<ndash> Type of the resource, which is the product
(C<AmiProduct>, C<ContainerProduct>, or C<SaaSProduct>).

=item *

C<PartyType> E<ndash> The party type (either C<Acceptor> or
C<Proposer>) of the caller. For agreements where the caller is the
proposer, use the C<Proposer> filter. For agreements where the caller
is the acceptor, use the C<Acceptor> filter.

=item *

C<AcceptorAccountId> E<ndash> The AWS account ID of the party accepting
the agreement terms.

=item *

C<OfferId> E<ndash> The unique identifier of the offer in which the
terms are registered in the agreement token.

=item *

C<Status> E<ndash> The current status of the agreement. Values include
C<ACTIVE>, C<ARCHIVED>, C<CANCELLED>, C<EXPIRED>, C<RENEWED>,
C<REPLACED>, and C<TERMINATED>.

=item *

C<BeforeEndTime> E<ndash> A date used to filter agreements with a date
before the C<endTime> of an agreement.

=item *

C<AfterEndTime> E<ndash> A date used to filter agreements with a date
after the C<endTime> of an agreement.

=item *

C<AgreementType> E<ndash> The type of agreement. Values include
C<PurchaseAgreement> or C<VendorInsightsAgreement>.

=back




=head2 MaxResults => Int

The maximum number of agreements to return in the response.



=head2 NextToken => Str

A token to specify where to start pagination.



=head2 Sort => L<Paws::MarketplaceAgreement::Sort>

An object that contains the C<SortBy> and C<SortOrder> attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchAgreements in L<Paws::MarketplaceAgreement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::DataZone::ListSubscriptionGrants;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'environmentId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'owningProjectId');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');
  has SubscribedListingId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'subscribedListingId');
  has SubscriptionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'subscriptionId');
  has SubscriptionTargetId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'subscriptionTargetId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptionGrants');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscription-grants');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListSubscriptionGrantsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListSubscriptionGrants - Arguments for method ListSubscriptionGrants on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSubscriptionGrants on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListSubscriptionGrants.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSubscriptionGrants.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListSubscriptionGrantsOutput = $datazone->ListSubscriptionGrants(
      DomainIdentifier     => 'MyDomainId',
      EnvironmentId        => 'MyEnvironmentId',           # OPTIONAL
      MaxResults           => 1,                           # OPTIONAL
      NextToken            => 'MyPaginationToken',         # OPTIONAL
      OwningProjectId      => 'MyProjectId',               # OPTIONAL
      SortBy               => 'CREATED_AT',                # OPTIONAL
      SortOrder            => 'ASCENDING',                 # OPTIONAL
      SubscribedListingId  => 'MyListingId',               # OPTIONAL
      SubscriptionId       => 'MySubscriptionId',          # OPTIONAL
      SubscriptionTargetId => 'MySubscriptionTargetId',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListSubscriptionGrantsOutput->Items;
    my $NextToken = $ListSubscriptionGrantsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListSubscriptionGrantsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListSubscriptionGrants>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 EnvironmentId => Str

The identifier of the Amazon DataZone environment.



=head2 MaxResults => Int

The maximum number of subscription grants to return in a single call to
C<ListSubscriptionGrants>. When the number of subscription grants to be
listed is greater than the value of C<MaxResults>, the response
contains a C<NextToken> value that you can use in a subsequent call to
C<ListSubscriptionGrants> to list the next set of subscription grants.



=head2 NextToken => Str

When the number of subscription grants is greater than the default
value for the C<MaxResults> parameter, or if you explicitly specify a
value for C<MaxResults> that is less than the number of subscription
grants, the response includes a pagination token named C<NextToken>.
You can specify this C<NextToken> value in a subsequent call to
C<ListSubscriptionGrants> to list the next set of subscription grants.



=head2 OwningProjectId => Str

The ID of the owning project of the subscription grants.



=head2 SortBy => Str

Specifies the way of sorting the results of this action.

Valid values are: C<"CREATED_AT">, C<"UPDATED_AT">

=head2 SortOrder => Str

Specifies the sort order of this action.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 SubscribedListingId => Str

The identifier of the subscribed listing.



=head2 SubscriptionId => Str

The identifier of the subscription.



=head2 SubscriptionTargetId => Str

The identifier of the subscription target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSubscriptionGrants in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::DataZone::ListSubscriptions;
  use Moose;
  has ApproverProjectId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'approverProjectId');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has OwningProjectId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'owningProjectId');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sortOrder');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');
  has SubscribedListingId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'subscribedListingId');
  has SubscriptionRequestIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'subscriptionRequestIdentifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscriptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListSubscriptionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListSubscriptions - Arguments for method ListSubscriptions on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSubscriptions on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListSubscriptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSubscriptions.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListSubscriptionsOutput = $datazone->ListSubscriptions(
      DomainIdentifier              => 'MyDomainId',
      ApproverProjectId             => 'MyProjectId',                # OPTIONAL
      MaxResults                    => 1,                            # OPTIONAL
      NextToken                     => 'MyPaginationToken',          # OPTIONAL
      OwningProjectId               => 'MyProjectId',                # OPTIONAL
      SortBy                        => 'CREATED_AT',                 # OPTIONAL
      SortOrder                     => 'ASCENDING',                  # OPTIONAL
      Status                        => 'APPROVED',                   # OPTIONAL
      SubscribedListingId           => 'MyListingId',                # OPTIONAL
      SubscriptionRequestIdentifier => 'MySubscriptionRequestId',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListSubscriptionsOutput->Items;
    my $NextToken = $ListSubscriptionsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListSubscriptionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListSubscriptions>

=head1 ATTRIBUTES


=head2 ApproverProjectId => Str

The identifier of the project for the subscription's approver.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 MaxResults => Int

The maximum number of subscriptions to return in a single call to
C<ListSubscriptions>. When the number of subscriptions to be listed is
greater than the value of C<MaxResults>, the response contains a
C<NextToken> value that you can use in a subsequent call to
C<ListSubscriptions> to list the next set of Subscriptions.



=head2 NextToken => Str

When the number of subscriptions is greater than the default value for
the C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of subscriptions, the
response includes a pagination token named C<NextToken>. You can
specify this C<NextToken> value in a subsequent call to
C<ListSubscriptions> to list the next set of subscriptions.



=head2 OwningProjectId => Str

The identifier of the owning project.



=head2 SortBy => Str

Specifies the way in which the results of this action are to be sorted.

Valid values are: C<"CREATED_AT">, C<"UPDATED_AT">

=head2 SortOrder => Str

Specifies the sort order for the results of this action.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 Status => Str

The status of the subscriptions that you want to list.

This is not a required parameter, but if not provided, by default,
Amazon DataZone returns only C<APPROVED> subscriptions.

Valid values are: C<"APPROVED">, C<"REVOKED">, C<"CANCELLED">

=head2 SubscribedListingId => Str

The identifier of the subscribed listing for the subscriptions that you
want to list.



=head2 SubscriptionRequestIdentifier => Str

The identifier of the subscription request for the subscriptions that
you want to list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSubscriptions in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


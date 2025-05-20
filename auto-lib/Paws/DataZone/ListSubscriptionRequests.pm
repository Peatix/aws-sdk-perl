
package Paws::DataZone::ListSubscriptionRequests;
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

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptionRequests');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/subscription-requests');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListSubscriptionRequestsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListSubscriptionRequests - Arguments for method ListSubscriptionRequests on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSubscriptionRequests on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListSubscriptionRequests.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSubscriptionRequests.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListSubscriptionRequestsOutput = $datazone->ListSubscriptionRequests(
      DomainIdentifier    => 'MyDomainId',
      ApproverProjectId   => 'MyProjectId',          # OPTIONAL
      MaxResults          => 1,                      # OPTIONAL
      NextToken           => 'MyPaginationToken',    # OPTIONAL
      OwningProjectId     => 'MyProjectId',          # OPTIONAL
      SortBy              => 'CREATED_AT',           # OPTIONAL
      SortOrder           => 'ASCENDING',            # OPTIONAL
      Status              => 'PENDING',              # OPTIONAL
      SubscribedListingId => 'MyListingId',          # OPTIONAL
    );

    # Results:
    my $Items     = $ListSubscriptionRequestsOutput->Items;
    my $NextToken = $ListSubscriptionRequestsOutput->NextToken;

    # Returns a L<Paws::DataZone::ListSubscriptionRequestsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListSubscriptionRequests>

=head1 ATTRIBUTES


=head2 ApproverProjectId => Str

The identifier of the subscription request approver's project.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 MaxResults => Int

The maximum number of subscription requests to return in a single call
to C<ListSubscriptionRequests>. When the number of subscription
requests to be listed is greater than the value of C<MaxResults>, the
response contains a C<NextToken> value that you can use in a subsequent
call to C<ListSubscriptionRequests> to list the next set of
subscription requests.



=head2 NextToken => Str

When the number of subscription requests is greater than the default
value for the C<MaxResults> parameter, or if you explicitly specify a
value for C<MaxResults> that is less than the number of subscription
requests, the response includes a pagination token named C<NextToken>.
You can specify this C<NextToken> value in a subsequent call to
C<ListSubscriptionRequests> to list the next set of subscription
requests.



=head2 OwningProjectId => Str

The identifier of the project for the subscription requests.



=head2 SortBy => Str

Specifies the way to sort the results of this action.

Valid values are: C<"CREATED_AT">, C<"UPDATED_AT">

=head2 SortOrder => Str

Specifies the sort order for the results of this action.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 Status => Str

Specifies the status of the subscription requests.

This is not a required parameter, but if not specified, by default,
Amazon DataZone returns only C<PENDING> subscription requests.

Valid values are: C<"PENDING">, C<"ACCEPTED">, C<"REJECTED">

=head2 SubscribedListingId => Str

The identifier of the subscribed listing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSubscriptionRequests in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


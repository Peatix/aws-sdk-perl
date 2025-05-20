
package Paws::EKS::ListEksAnywhereSubscriptions;
  use Moose;
  has IncludeStatus => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'includeStatus');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEksAnywhereSubscriptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/eks-anywhere-subscriptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::ListEksAnywhereSubscriptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListEksAnywhereSubscriptions - Arguments for method ListEksAnywhereSubscriptions on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEksAnywhereSubscriptions on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method ListEksAnywhereSubscriptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEksAnywhereSubscriptions.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $ListEksAnywhereSubscriptionsResponse =
      $eks->ListEksAnywhereSubscriptions(
      IncludeStatus => [
        'CREATING',
        ...    # values: CREATING, ACTIVE, UPDATING, EXPIRING, EXPIRED, DELETING
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken     = $ListEksAnywhereSubscriptionsResponse->NextToken;
    my $Subscriptions = $ListEksAnywhereSubscriptionsResponse->Subscriptions;

    # Returns a L<Paws::EKS::ListEksAnywhereSubscriptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/ListEksAnywhereSubscriptions>

=head1 ATTRIBUTES


=head2 IncludeStatus => ArrayRef[Str|Undef]

An array of subscription statuses to filter on.



=head2 MaxResults => Int

The maximum number of cluster results returned by
ListEksAnywhereSubscriptions in paginated output. When you use this
parameter, ListEksAnywhereSubscriptions returns only maxResults results
in a single page along with a nextToken response element. You can see
the remaining results of the initial request by sending another
ListEksAnywhereSubscriptions request with the returned nextToken value.
This value can be between 1 and 100. If you don't use this parameter,
ListEksAnywhereSubscriptions returns up to 10 results and a nextToken
value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListEksAnywhereSubscriptions> request where C<maxResults> was used
and the results exceeded the value of that parameter. Pagination
continues from the end of the previous results that returned the
C<nextToken> value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEksAnywhereSubscriptions in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


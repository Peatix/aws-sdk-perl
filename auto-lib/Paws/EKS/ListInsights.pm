
package Paws::EKS::ListInsights;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Filter => (is => 'ro', isa => 'Paws::EKS::InsightsFilter', traits => ['NameInRequest'], request_name => 'filter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInsights');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/insights');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::ListInsightsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListInsights - Arguments for method ListInsights on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInsights on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method ListInsights.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInsights.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $ListInsightsResponse = $eks->ListInsights(
      ClusterName => 'MyString',
      Filter      => {
        Categories => [
          'UPGRADE_READINESS', ...    # values: UPGRADE_READINESS
        ],    # OPTIONAL
        KubernetesVersions => [ 'MyString', ... ],    # OPTIONAL
        Statuses           => [
          'PASSING', ...    # values: PASSING, WARNING, ERROR, UNKNOWN
        ],    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Insights  = $ListInsightsResponse->Insights;
    my $NextToken = $ListInsightsResponse->NextToken;

    # Returns a L<Paws::EKS::ListInsightsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/ListInsights>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the Amazon EKS cluster associated with the insights.



=head2 Filter => L<Paws::EKS::InsightsFilter>

The criteria to filter your list of insights for your cluster. You can
filter which insights are returned by category, associated Kubernetes
version, and status.



=head2 MaxResults => Int

The maximum number of identity provider configurations returned by
C<ListInsights> in paginated output. When you use this parameter,
C<ListInsights> returns only C<maxResults> results in a single page
along with a C<nextToken> response element. You can see the remaining
results of the initial request by sending another C<ListInsights>
request with the returned C<nextToken> value. This value can be between
1 and 100. If you don't use this parameter, C<ListInsights> returns up
to 100 results and a C<nextToken> value, if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListInsights> request. When the results of a C<ListInsights> request
exceed C<maxResults>, you can use this value to retrieve the next page
of results. This value is C<null> when there are no more results to
return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInsights in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


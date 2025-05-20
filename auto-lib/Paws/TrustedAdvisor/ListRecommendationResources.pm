
package Paws::TrustedAdvisor::ListRecommendationResources;
  use Moose;
  has ExclusionStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'exclusionStatus');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has RecommendationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'recommendationIdentifier', required => 1);
  has RegionCode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'regionCode');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecommendationResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/recommendations/{recommendationIdentifier}/resources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TrustedAdvisor::ListRecommendationResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::ListRecommendationResources - Arguments for method ListRecommendationResources on L<Paws::TrustedAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecommendationResources on the
L<TrustedAdvisor Public API|Paws::TrustedAdvisor> service. Use the attributes of this class
as arguments to method ListRecommendationResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecommendationResources.

=head1 SYNOPSIS

    my $trustedadvisor = Paws->service('TrustedAdvisor');
    my $ListRecommendationResourcesResponse =
      $trustedadvisor->ListRecommendationResources(
      RecommendationIdentifier => 'MyAccountRecommendationIdentifier',
      ExclusionStatus          => 'excluded',                         # OPTIONAL
      MaxResults               => 1,                                  # OPTIONAL
      NextToken                =>
        'MyListRecommendationResourcesRequestNextTokenString',        # OPTIONAL
      RegionCode => 'MyString',                                       # OPTIONAL
      Status     => 'ok',                                             # OPTIONAL
      );

    # Results:
    my $NextToken = $ListRecommendationResourcesResponse->NextToken;
    my $RecommendationResourceSummaries =
      $ListRecommendationResourcesResponse->RecommendationResourceSummaries;

# Returns a L<Paws::TrustedAdvisor::ListRecommendationResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/trustedadvisor/ListRecommendationResources>

=head1 ATTRIBUTES


=head2 ExclusionStatus => Str

The exclusion status of the resource

Valid values are: C<"excluded">, C<"included">

=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> RecommendationIdentifier => Str

The Recommendation identifier



=head2 RegionCode => Str

The AWS Region code of the resource



=head2 Status => Str

The status of the resource

Valid values are: C<"ok">, C<"warning">, C<"error">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecommendationResources in L<Paws::TrustedAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


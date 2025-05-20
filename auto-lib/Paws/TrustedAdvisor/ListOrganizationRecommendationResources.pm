
package Paws::TrustedAdvisor::ListOrganizationRecommendationResources;
  use Moose;
  has AffectedAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'affectedAccountId');
  has ExclusionStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'exclusionStatus');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has OrganizationRecommendationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'organizationRecommendationIdentifier', required => 1);
  has RegionCode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'regionCode');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrganizationRecommendationResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/organization-recommendations/{organizationRecommendationIdentifier}/resources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TrustedAdvisor::ListOrganizationRecommendationResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::ListOrganizationRecommendationResources - Arguments for method ListOrganizationRecommendationResources on L<Paws::TrustedAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrganizationRecommendationResources on the
L<TrustedAdvisor Public API|Paws::TrustedAdvisor> service. Use the attributes of this class
as arguments to method ListOrganizationRecommendationResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrganizationRecommendationResources.

=head1 SYNOPSIS

    my $trustedadvisor = Paws->service('TrustedAdvisor');
    my $ListOrganizationRecommendationResourcesResponse =
      $trustedadvisor->ListOrganizationRecommendationResources(
      OrganizationRecommendationIdentifier =>
        'MyOrganizationRecommendationIdentifier',
      AffectedAccountId => 'MyAccountId',    # OPTIONAL
      ExclusionStatus   => 'excluded',       # OPTIONAL
      MaxResults        => 1,                # OPTIONAL
      NextToken         =>
        'MyListOrganizationRecommendationResourcesRequestNextTokenString'
      ,                                      # OPTIONAL
      RegionCode => 'MyString',              # OPTIONAL
      Status     => 'ok',                    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListOrganizationRecommendationResourcesResponse->NextToken;
    my $OrganizationRecommendationResourceSummaries =
      $ListOrganizationRecommendationResourcesResponse
      ->OrganizationRecommendationResourceSummaries;

# Returns a L<Paws::TrustedAdvisor::ListOrganizationRecommendationResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/trustedadvisor/ListOrganizationRecommendationResources>

=head1 ATTRIBUTES


=head2 AffectedAccountId => Str

An account affected by this organization recommendation



=head2 ExclusionStatus => Str

The exclusion status of the resource

Valid values are: C<"excluded">, C<"included">

=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> OrganizationRecommendationIdentifier => Str

The AWS Organization organization's Recommendation identifier



=head2 RegionCode => Str

The AWS Region code of the resource



=head2 Status => Str

The status of the resource

Valid values are: C<"ok">, C<"warning">, C<"error">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrganizationRecommendationResources in L<Paws::TrustedAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


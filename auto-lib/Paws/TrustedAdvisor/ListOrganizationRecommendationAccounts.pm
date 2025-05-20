
package Paws::TrustedAdvisor::ListOrganizationRecommendationAccounts;
  use Moose;
  has AffectedAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'affectedAccountId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has OrganizationRecommendationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'organizationRecommendationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrganizationRecommendationAccounts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/organization-recommendations/{organizationRecommendationIdentifier}/accounts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TrustedAdvisor::ListOrganizationRecommendationAccountsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::ListOrganizationRecommendationAccounts - Arguments for method ListOrganizationRecommendationAccounts on L<Paws::TrustedAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrganizationRecommendationAccounts on the
L<TrustedAdvisor Public API|Paws::TrustedAdvisor> service. Use the attributes of this class
as arguments to method ListOrganizationRecommendationAccounts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrganizationRecommendationAccounts.

=head1 SYNOPSIS

    my $trustedadvisor = Paws->service('TrustedAdvisor');
    my $ListOrganizationRecommendationAccountsResponse =
      $trustedadvisor->ListOrganizationRecommendationAccounts(
      OrganizationRecommendationIdentifier =>
        'MyOrganizationRecommendationIdentifier',
      AffectedAccountId => 'MyAccountId',    # OPTIONAL
      MaxResults        => 1,                # OPTIONAL
      NextToken         =>
        'MyListOrganizationRecommendationAccountsRequestNextTokenString'
      ,                                      # OPTIONAL
      );

    # Results:
    my $AccountRecommendationLifecycleSummaries =
      $ListOrganizationRecommendationAccountsResponse
      ->AccountRecommendationLifecycleSummaries;
    my $NextToken = $ListOrganizationRecommendationAccountsResponse->NextToken;

# Returns a L<Paws::TrustedAdvisor::ListOrganizationRecommendationAccountsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/trustedadvisor/ListOrganizationRecommendationAccounts>

=head1 ATTRIBUTES


=head2 AffectedAccountId => Str

An account affected by this organization recommendation



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 B<REQUIRED> OrganizationRecommendationIdentifier => Str

The Recommendation identifier




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrganizationRecommendationAccounts in L<Paws::TrustedAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


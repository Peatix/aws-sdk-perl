
package Paws::TrustedAdvisor::ListOrganizationRecommendations;
  use Moose;
  has AfterLastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'afterLastUpdatedAt');
  has AwsService => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'awsService');
  has BeforeLastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'beforeLastUpdatedAt');
  has CheckIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'checkIdentifier');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Pillar => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'pillar');
  has Source => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'source');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrganizationRecommendations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/organization-recommendations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TrustedAdvisor::ListOrganizationRecommendationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::ListOrganizationRecommendations - Arguments for method ListOrganizationRecommendations on L<Paws::TrustedAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrganizationRecommendations on the
L<TrustedAdvisor Public API|Paws::TrustedAdvisor> service. Use the attributes of this class
as arguments to method ListOrganizationRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrganizationRecommendations.

=head1 SYNOPSIS

    my $trustedadvisor = Paws->service('TrustedAdvisor');
    my $ListOrganizationRecommendationsResponse =
      $trustedadvisor->ListOrganizationRecommendations(
      AfterLastUpdatedAt  => '1970-01-01T01:00:00',           # OPTIONAL
      AwsService          => 'MyRecommendationAwsService',    # OPTIONAL
      BeforeLastUpdatedAt => '1970-01-01T01:00:00',           # OPTIONAL
      CheckIdentifier     => 'MyCheckIdentifier',             # OPTIONAL
      MaxResults          => 1,                               # OPTIONAL
      NextToken           =>
        'MyListOrganizationRecommendationsRequestNextTokenString',    # OPTIONAL
      Pillar => 'cost_optimizing',                                    # OPTIONAL
      Source => 'aws_config',                                         # OPTIONAL
      Status => 'ok',                                                 # OPTIONAL
      Type   => 'standard',                                           # OPTIONAL
      );

    # Results:
    my $NextToken = $ListOrganizationRecommendationsResponse->NextToken;
    my $OrganizationRecommendationSummaries =
      $ListOrganizationRecommendationsResponse
      ->OrganizationRecommendationSummaries;

# Returns a L<Paws::TrustedAdvisor::ListOrganizationRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/trustedadvisor/ListOrganizationRecommendations>

=head1 ATTRIBUTES


=head2 AfterLastUpdatedAt => Str

After the last update of the Recommendation



=head2 AwsService => Str

The aws service associated with the Recommendation



=head2 BeforeLastUpdatedAt => Str

Before the last update of the Recommendation



=head2 CheckIdentifier => Str

The check identifier of the Recommendation



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 Pillar => Str

The pillar of the Recommendation

Valid values are: C<"cost_optimizing">, C<"performance">, C<"security">, C<"service_limits">, C<"fault_tolerance">, C<"operational_excellence">

=head2 Source => Str

The source of the Recommendation

Valid values are: C<"aws_config">, C<"compute_optimizer">, C<"cost_explorer">, C<"lse">, C<"manual">, C<"pse">, C<"rds">, C<"resilience">, C<"resilience_hub">, C<"security_hub">, C<"stir">, C<"ta_check">, C<"well_architected">

=head2 Status => Str

The status of the Recommendation

Valid values are: C<"ok">, C<"warning">, C<"error">

=head2 Type => Str

The type of the Recommendation

Valid values are: C<"standard">, C<"priority">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrganizationRecommendations in L<Paws::TrustedAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


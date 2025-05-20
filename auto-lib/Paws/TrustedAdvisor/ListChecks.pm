
package Paws::TrustedAdvisor::ListChecks;
  use Moose;
  has AwsService => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'awsService');
  has Language => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'language');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Pillar => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'pillar');
  has Source => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'source');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChecks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/checks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TrustedAdvisor::ListChecksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TrustedAdvisor::ListChecks - Arguments for method ListChecks on L<Paws::TrustedAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChecks on the
L<TrustedAdvisor Public API|Paws::TrustedAdvisor> service. Use the attributes of this class
as arguments to method ListChecks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChecks.

=head1 SYNOPSIS

    my $trustedadvisor = Paws->service('TrustedAdvisor');
    my $ListChecksResponse = $trustedadvisor->ListChecks(
      AwsService => 'MyRecommendationAwsService',            # OPTIONAL
      Language   => 'en',                                    # OPTIONAL
      MaxResults => 1,                                       # OPTIONAL
      NextToken  => 'MyListChecksRequestNextTokenString',    # OPTIONAL
      Pillar     => 'cost_optimizing',                       # OPTIONAL
      Source     => 'aws_config',                            # OPTIONAL
    );

    # Results:
    my $CheckSummaries = $ListChecksResponse->CheckSummaries;
    my $NextToken      = $ListChecksResponse->NextToken;

    # Returns a L<Paws::TrustedAdvisor::ListChecksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/trustedadvisor/ListChecks>

=head1 ATTRIBUTES


=head2 AwsService => Str

The aws service associated with the check



=head2 Language => Str

The ISO 639-1 code for the language that you want your checks to appear
in.

Valid values are: C<"en">, C<"ja">, C<"zh">, C<"fr">, C<"de">, C<"ko">, C<"zh_TW">, C<"it">, C<"es">, C<"pt_BR">, C<"id">

=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 Pillar => Str

The pillar of the check

Valid values are: C<"cost_optimizing">, C<"performance">, C<"security">, C<"service_limits">, C<"fault_tolerance">, C<"operational_excellence">

=head2 Source => Str

The source of the check

Valid values are: C<"aws_config">, C<"compute_optimizer">, C<"cost_explorer">, C<"lse">, C<"manual">, C<"pse">, C<"rds">, C<"resilience">, C<"resilience_hub">, C<"security_hub">, C<"stir">, C<"ta_check">, C<"well_architected">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChecks in L<Paws::TrustedAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::ConnectCampaignsV2::ListConnectInstanceIntegrations;
  use Moose;
  has ConnectInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectInstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnectInstanceIntegrations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/connect-instance/{connectInstanceId}/integrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCampaignsV2::ListConnectInstanceIntegrationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::ListConnectInstanceIntegrations - Arguments for method ListConnectInstanceIntegrations on L<Paws::ConnectCampaignsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnectInstanceIntegrations on the
L<AmazonConnectCampaignServiceV2|Paws::ConnectCampaignsV2> service. Use the attributes of this class
as arguments to method ListConnectInstanceIntegrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnectInstanceIntegrations.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaignsV2');
    my $ListConnectInstanceIntegrationsResponse =
      $connect -campaigns->ListConnectInstanceIntegrations(
      ConnectInstanceId => 'MyInstanceId',
      MaxResults        => 1,                # OPTIONAL
      NextToken         => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $IntegrationSummaryList =
      $ListConnectInstanceIntegrationsResponse->IntegrationSummaryList;
    my $NextToken = $ListConnectInstanceIntegrationsResponse->NextToken;

# Returns a L<Paws::ConnectCampaignsV2::ListConnectInstanceIntegrationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/ListConnectInstanceIntegrations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectInstanceId => Str





=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnectInstanceIntegrations in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


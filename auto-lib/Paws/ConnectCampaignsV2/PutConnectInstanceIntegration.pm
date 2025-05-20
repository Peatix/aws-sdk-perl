
package Paws::ConnectCampaignsV2::PutConnectInstanceIntegration;
  use Moose;
  has ConnectInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectInstanceId', required => 1);
  has IntegrationConfig => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::IntegrationConfig', traits => ['NameInRequest'], request_name => 'integrationConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConnectInstanceIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/connect-instance/{connectInstanceId}/integrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::PutConnectInstanceIntegration - Arguments for method PutConnectInstanceIntegration on L<Paws::ConnectCampaignsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConnectInstanceIntegration on the
L<AmazonConnectCampaignServiceV2|Paws::ConnectCampaignsV2> service. Use the attributes of this class
as arguments to method PutConnectInstanceIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutConnectInstanceIntegration.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaignsV2');
    $connect -campaigns->PutConnectInstanceIntegration(
      ConnectInstanceId => 'MyInstanceId',
      IntegrationConfig => {
        CustomerProfiles => {
          DomainArn       => 'MyArn',    # min: 20, max: 500
          ObjectTypeNames => {
            'Campaign-Email' => 'MyObjectTypeName'
            , # key: values: Campaign-Email, Campaign-SMS, Campaign-Telephony, Campaign-Orchestration, value: min: 1, max: 255
          },

        },    # OPTIONAL
        QConnect => {
          KnowledgeBaseArn => 'MyArn',    # min: 20, max: 500

        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/PutConnectInstanceIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectInstanceId => Str





=head2 B<REQUIRED> IntegrationConfig => L<Paws::ConnectCampaignsV2::IntegrationConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutConnectInstanceIntegration in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


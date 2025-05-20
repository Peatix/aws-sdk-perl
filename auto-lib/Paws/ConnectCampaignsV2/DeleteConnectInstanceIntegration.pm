
package Paws::ConnectCampaignsV2::DeleteConnectInstanceIntegration;
  use Moose;
  has ConnectInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectInstanceId', required => 1);
  has IntegrationIdentifier => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::IntegrationIdentifier', traits => ['NameInRequest'], request_name => 'integrationIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnectInstanceIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/connect-instance/{connectInstanceId}/integrations/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::DeleteConnectInstanceIntegration - Arguments for method DeleteConnectInstanceIntegration on L<Paws::ConnectCampaignsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConnectInstanceIntegration on the
L<AmazonConnectCampaignServiceV2|Paws::ConnectCampaignsV2> service. Use the attributes of this class
as arguments to method DeleteConnectInstanceIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConnectInstanceIntegration.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaignsV2');
    $connect -campaigns->DeleteConnectInstanceIntegration(
      ConnectInstanceId     => 'MyInstanceId',
      IntegrationIdentifier => {
        CustomerProfiles => {
          DomainArn => 'MyArn',    # min: 20, max: 500

        },    # OPTIONAL
        QConnect => {
          KnowledgeBaseArn => 'MyArn',    # min: 20, max: 500

        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/DeleteConnectInstanceIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectInstanceId => Str





=head2 B<REQUIRED> IntegrationIdentifier => L<Paws::ConnectCampaignsV2::IntegrationIdentifier>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConnectInstanceIntegration in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


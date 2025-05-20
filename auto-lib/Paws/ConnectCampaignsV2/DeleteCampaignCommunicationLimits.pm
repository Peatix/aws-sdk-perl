
package Paws::ConnectCampaignsV2::DeleteCampaignCommunicationLimits;
  use Moose;
  has Config => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'config', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCampaignCommunicationLimits');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/campaigns/{id}/communication-limits');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::DeleteCampaignCommunicationLimits - Arguments for method DeleteCampaignCommunicationLimits on L<Paws::ConnectCampaignsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCampaignCommunicationLimits on the
L<AmazonConnectCampaignServiceV2|Paws::ConnectCampaignsV2> service. Use the attributes of this class
as arguments to method DeleteCampaignCommunicationLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCampaignCommunicationLimits.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaignsV2');
    $connect -campaigns->DeleteCampaignCommunicationLimits(
      Config => 'ALL_CHANNEL_SUBTYPES',
      Id     => 'MyCampaignId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/DeleteCampaignCommunicationLimits>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Config => Str



Valid values are: C<"ALL_CHANNEL_SUBTYPES">

=head2 B<REQUIRED> Id => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCampaignCommunicationLimits in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


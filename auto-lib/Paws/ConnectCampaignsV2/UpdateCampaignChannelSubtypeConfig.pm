
package Paws::ConnectCampaignsV2::UpdateCampaignChannelSubtypeConfig;
  use Moose;
  has ChannelSubtypeConfig => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::ChannelSubtypeConfig', traits => ['NameInRequest'], request_name => 'channelSubtypeConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCampaignChannelSubtypeConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/campaigns/{id}/channel-subtype-config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::UpdateCampaignChannelSubtypeConfig - Arguments for method UpdateCampaignChannelSubtypeConfig on L<Paws::ConnectCampaignsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCampaignChannelSubtypeConfig on the
L<AmazonConnectCampaignServiceV2|Paws::ConnectCampaignsV2> service. Use the attributes of this class
as arguments to method UpdateCampaignChannelSubtypeConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCampaignChannelSubtypeConfig.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaignsV2');
    $connect -campaigns->UpdateCampaignChannelSubtypeConfig(
      ChannelSubtypeConfig => {
        Email => {
          DefaultOutboundConfig => {
            ConnectSourceEmailAddress => 'MyEmailAddress',   # min: 1, max: 255
            WisdomTemplateArn         => 'MyArn',            # min: 20, max: 500
            SourceEmailAddressDisplayName =>
              'MyEmailDisplayName',    # max: 256; OPTIONAL
          },
          OutboundMode => {
            Agentless => {

            },                         # OPTIONAL
          },
          Capacity => 1,               # min: 0.01, max: 1; OPTIONAL
        },    # OPTIONAL
        Sms => {
          DefaultOutboundConfig => {
            ConnectSourcePhoneNumberArn => 'MyArn',    # min: 20, max: 500
            WisdomTemplateArn           => 'MyArn',    # min: 20, max: 500

          },
          OutboundMode => {
            Agentless => {

            },                                         # OPTIONAL
          },
          Capacity => 1,    # min: 0.01, max: 1; OPTIONAL
        },    # OPTIONAL
        Telephony => {
          DefaultOutboundConfig => {
            ConnectContactFlowId         => 'MyContactFlowId',    # max: 500
            AnswerMachineDetectionConfig => {
              EnableAnswerMachineDetection => 1,
              AwaitAnswerMachinePrompt     => 1,
            },                                                    # OPTIONAL
            ConnectSourcePhoneNumber =>
              'MySourcePhoneNumber',    # max: 100; OPTIONAL
          },
          OutboundMode => {
            Agentless => {

            },                          # OPTIONAL
            Predictive => {
              BandwidthAllocation => 1,    # max: 1

            },    # OPTIONAL
            Progressive => {
              BandwidthAllocation => 1,    # max: 1

            },    # OPTIONAL
          },
          Capacity       => 1,              # min: 0.01, max: 1; OPTIONAL
          ConnectQueueId => 'MyQueueId',    # max: 500; OPTIONAL
        },    # OPTIONAL
      },
      Id => 'MyCampaignId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/UpdateCampaignChannelSubtypeConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelSubtypeConfig => L<Paws::ConnectCampaignsV2::ChannelSubtypeConfig>





=head2 B<REQUIRED> Id => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCampaignChannelSubtypeConfig in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


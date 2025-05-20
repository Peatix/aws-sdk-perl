
package Paws::ConnectCampaigns::CreateCampaign;
  use Moose;
  has ConnectInstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectInstanceId', required => 1);
  has DialerConfig => (is => 'ro', isa => 'Paws::ConnectCampaigns::DialerConfig', traits => ['NameInRequest'], request_name => 'dialerConfig', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OutboundCallConfig => (is => 'ro', isa => 'Paws::ConnectCampaigns::OutboundCallConfig', traits => ['NameInRequest'], request_name => 'outboundCallConfig', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ConnectCampaigns::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCampaign');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/campaigns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCampaigns::CreateCampaignResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::CreateCampaign - Arguments for method CreateCampaign on L<Paws::ConnectCampaigns>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCampaign on the
L<AmazonConnectCampaignService|Paws::ConnectCampaigns> service. Use the attributes of this class
as arguments to method CreateCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCampaign.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaigns');
    my $CreateCampaignResponse = $connect -campaigns->CreateCampaign(
      ConnectInstanceId => 'MyInstanceId',
      DialerConfig      => {
        AgentlessDialerConfig => {
          DialingCapacity => 1,    # min: 0.01, max: 1; OPTIONAL
        },    # OPTIONAL
        PredictiveDialerConfig => {
          BandwidthAllocation => 1,    # max: 1
          DialingCapacity     => 1,    # min: 0.01, max: 1; OPTIONAL
        },    # OPTIONAL
        ProgressiveDialerConfig => {
          BandwidthAllocation => 1,    # max: 1
          DialingCapacity     => 1,    # min: 0.01, max: 1; OPTIONAL
        },    # OPTIONAL
      },
      Name               => 'MyCampaignName',
      OutboundCallConfig => {
        ConnectContactFlowId         => 'MyContactFlowId',    # max: 500
        AnswerMachineDetectionConfig => {
          EnableAnswerMachineDetection => 1,
          AwaitAnswerMachinePrompt     => 1,
        },                                                    # OPTIONAL
        ConnectQueueId           => 'MyQueueId',            # max: 500; OPTIONAL
        ConnectSourcePhoneNumber => 'MySourcePhoneNumber',  # max: 100; OPTIONAL
      },
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn  = $CreateCampaignResponse->Arn;
    my $Id   = $CreateCampaignResponse->Id;
    my $Tags = $CreateCampaignResponse->Tags;

    # Returns a L<Paws::ConnectCampaigns::CreateCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/CreateCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectInstanceId => Str





=head2 B<REQUIRED> DialerConfig => L<Paws::ConnectCampaigns::DialerConfig>





=head2 B<REQUIRED> Name => Str





=head2 B<REQUIRED> OutboundCallConfig => L<Paws::ConnectCampaigns::OutboundCallConfig>





=head2 Tags => L<Paws::ConnectCampaigns::TagMap>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCampaign in L<Paws::ConnectCampaigns>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


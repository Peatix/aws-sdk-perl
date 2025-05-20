
package Paws::ConnectCampaignsV2::PutOutboundRequestBatch;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has OutboundRequests => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::OutboundRequest]', traits => ['NameInRequest'], request_name => 'outboundRequests', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutOutboundRequestBatch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/campaigns/{id}/outbound-requests');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectCampaignsV2::PutOutboundRequestBatchResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::PutOutboundRequestBatch - Arguments for method PutOutboundRequestBatch on L<Paws::ConnectCampaignsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutOutboundRequestBatch on the
L<AmazonConnectCampaignServiceV2|Paws::ConnectCampaignsV2> service. Use the attributes of this class
as arguments to method PutOutboundRequestBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutOutboundRequestBatch.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaignsV2');
    my $PutOutboundRequestBatchResponse =
      $connect -campaigns->PutOutboundRequestBatch(
      Id               => 'MyCampaignId',
      OutboundRequests => [
        {
          ChannelSubtypeParameters => {
            Email => {
              DestinationEmailAddress => 'MyEmailAddress',    # min: 1, max: 255
              TemplateParameters      => {
                'MyAttributeName' =>
                  'MyAttributeValue',    # key: max: 32767, value: max: 32767
              },
              ConnectSourceEmailAddress => 'MyEmailAddress',  # min: 1, max: 255
              TemplateArn => 'MyArn',    # min: 20, max: 500; OPTIONAL
            },    # OPTIONAL
            Sms => {
              DestinationPhoneNumber => 'MyDestinationPhoneNumber',    # max: 20
              TemplateParameters     => {
                'MyAttributeName' =>
                  'MyAttributeValue',    # key: max: 32767, value: max: 32767
              },
              ConnectSourcePhoneNumberArn =>
                'MyArn',                 # min: 20, max: 500; OPTIONAL
              TemplateArn => 'MyArn',    # min: 20, max: 500; OPTIONAL
            },    # OPTIONAL
            Telephony => {
              Attributes => {
                'MyAttributeName' =>
                  'MyAttributeValue',    # key: max: 32767, value: max: 32767
              },
              DestinationPhoneNumber => 'MyDestinationPhoneNumber',    # max: 20
              AnswerMachineDetectionConfig => {
                EnableAnswerMachineDetection => 1,
                AwaitAnswerMachinePrompt     => 1,
              },    # OPTIONAL
              ConnectSourcePhoneNumber =>
                'MySourcePhoneNumber',    # max: 100; OPTIONAL
            },    # OPTIONAL
          },
          ClientToken    => 'MyClientToken',         # max: 200
          ExpirationTime => '1970-01-01T01:00:00',

        },
        ...
      ],

      );

    # Results:
    my $FailedRequests = $PutOutboundRequestBatchResponse->FailedRequests;
    my $SuccessfulRequests =
      $PutOutboundRequestBatchResponse->SuccessfulRequests;

# Returns a L<Paws::ConnectCampaignsV2::PutOutboundRequestBatchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/PutOutboundRequestBatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str





=head2 B<REQUIRED> OutboundRequests => ArrayRef[L<Paws::ConnectCampaignsV2::OutboundRequest>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutOutboundRequestBatch in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Connect::SendOutboundEmail;
  use Moose;
  has AdditionalRecipients => (is => 'ro', isa => 'Paws::Connect::OutboundAdditionalRecipients');
  has ClientToken => (is => 'ro', isa => 'Str');
  has DestinationEmailAddress => (is => 'ro', isa => 'Paws::Connect::EmailAddressInfo', required => 1);
  has EmailMessage => (is => 'ro', isa => 'Paws::Connect::OutboundEmailContent', required => 1);
  has FromEmailAddress => (is => 'ro', isa => 'Paws::Connect::EmailAddressInfo', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has SourceCampaign => (is => 'ro', isa => 'Paws::Connect::SourceCampaign');
  has TrafficType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendOutboundEmail');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/outbound-email');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::SendOutboundEmailResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SendOutboundEmail - Arguments for method SendOutboundEmail on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendOutboundEmail on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method SendOutboundEmail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendOutboundEmail.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $SendOutboundEmailResponse = $connect->SendOutboundEmail(
      DestinationEmailAddress => {
        EmailAddress => 'MyEmailAddress',               # min: 1, max: 255
        DisplayName  => 'MyEmailAddressDisplayName',    # max: 256; OPTIONAL
      },
      EmailMessage => {
        MessageSourceType => 'TEMPLATE',                # values: TEMPLATE, RAW
        RawMessage        => {
          Body        => 'MyBody',                       # min: 1, max: 5242880
          ContentType => 'MyEmailMessageContentType',    # min: 1, max: 100
          Subject     => 'MyOutboundSubject',            # min: 1, max: 998

        },    # OPTIONAL
        TemplatedMessageConfig => {
          KnowledgeBaseId =>
            'MyMessageTemplateKnowledgeBaseId',    # min: 1, max: 500
          MessageTemplateId  => 'MyMessageTemplateId',    # min: 1, max: 500
          TemplateAttributes => {
            CustomAttributes => {
              'MyAttributeName' =>
                'MyAttributeValue', # key: min: 1, max: 32767, value: max: 32767
            },    # OPTIONAL
            CustomerProfileAttributes =>
              'MyCustomerProfileAttributesSerialized',    # OPTIONAL
          },

        },    # OPTIONAL
      },
      FromEmailAddress => {
        EmailAddress => 'MyEmailAddress',               # min: 1, max: 255
        DisplayName  => 'MyEmailAddressDisplayName',    # max: 256; OPTIONAL
      },
      InstanceId           => 'MyInstanceId',
      TrafficType          => 'GENERAL',
      AdditionalRecipients => {
        CcEmailAddresses => [
          {
            EmailAddress => 'MyEmailAddress',               # min: 1, max: 255
            DisplayName  => 'MyEmailAddressDisplayName',    # max: 256; OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      ClientToken    => 'MyClientToken',    # OPTIONAL
      SourceCampaign => {
        CampaignId        => 'MyCampaignId',        # min: 1, max: 100; OPTIONAL
        OutboundRequestId => 'MyOutboundRequestId', # min: 36, max: 36; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/SendOutboundEmail>

=head1 ATTRIBUTES


=head2 AdditionalRecipients => L<Paws::Connect::OutboundAdditionalRecipients>

The additional recipients address of the email in CC.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see
Making retries safe with idempotent APIs
(https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/).



=head2 B<REQUIRED> DestinationEmailAddress => L<Paws::Connect::EmailAddressInfo>

The email address to send the email to.



=head2 B<REQUIRED> EmailMessage => L<Paws::Connect::OutboundEmailContent>

The email message body to be sent to the newly created email.



=head2 B<REQUIRED> FromEmailAddress => L<Paws::Connect::EmailAddressInfo>

The email address to be used for sending email.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 SourceCampaign => L<Paws::Connect::SourceCampaign>

A Campaign object need for Campaign traffic type.



=head2 B<REQUIRED> TrafficType => Str

Denotes the class of traffic.

Only the CAMPAIGN traffic type is supported.

Valid values are: C<"GENERAL">, C<"CAMPAIGN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendOutboundEmail in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Chatbot::UpdateChimeWebhookConfiguration;
  use Moose;
  has ChatConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has LoggingLevel => (is => 'ro', isa => 'Str');
  has SnsTopicArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WebhookDescription => (is => 'ro', isa => 'Str');
  has WebhookUrl => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChimeWebhookConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-chime-webhook-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::UpdateChimeWebhookConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::UpdateChimeWebhookConfiguration - Arguments for method UpdateChimeWebhookConfiguration on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChimeWebhookConfiguration on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method UpdateChimeWebhookConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChimeWebhookConfiguration.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $UpdateChimeWebhookConfigurationResult =
      $chatbot->UpdateChimeWebhookConfiguration(
      ChatConfigurationArn => 'MyChatConfigurationArn',
      IamRoleArn           => 'MyArn',                    # OPTIONAL
      LoggingLevel         => 'MyCustomerCwLogLevel',     # OPTIONAL
      SnsTopicArns         => [
        'MyArn', ...                                      # min: 12, max: 1224
      ],    # OPTIONAL
      WebhookDescription => 'MyChimeWebhookDescription',    # OPTIONAL
      WebhookUrl         => 'MyChimeWebhookUrl',            # OPTIONAL
      );

    # Results:
    my $WebhookConfiguration =
      $UpdateChimeWebhookConfigurationResult->WebhookConfiguration;

    # Returns a L<Paws::Chatbot::UpdateChimeWebhookConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/UpdateChimeWebhookConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChatConfigurationArn => Str

The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration to
update.



=head2 IamRoleArn => Str

A user-defined role that AWS Chatbot assumes. This is not the
service-linked role.

For more information, see IAM policies for AWS Chatbot
(https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html)
in the I< AWS Chatbot Administrator Guide>.



=head2 LoggingLevel => Str

Logging levels include C<ERROR>, C<INFO>, or C<NONE>.



=head2 SnsTopicArns => ArrayRef[Str|Undef]

The ARNs of the SNS topics that deliver notifications to AWS Chatbot.



=head2 WebhookDescription => Str

A description of the webhook. We recommend using the convention
C<RoomName/WebhookName>.

For more information, see Tutorial: Get started with Amazon Chime
(https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html)
in the I< AWS Chatbot Administrator Guide>.



=head2 WebhookUrl => Str

The URL for the Amazon Chime webhook.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChimeWebhookConfiguration in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


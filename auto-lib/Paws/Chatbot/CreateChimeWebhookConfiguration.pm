
package Paws::Chatbot::CreateChimeWebhookConfiguration;
  use Moose;
  has ConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has LoggingLevel => (is => 'ro', isa => 'Str');
  has SnsTopicArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Chatbot::Tag]');
  has WebhookDescription => (is => 'ro', isa => 'Str', required => 1);
  has WebhookUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChimeWebhookConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-chime-webhook-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::CreateChimeWebhookConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::CreateChimeWebhookConfiguration - Arguments for method CreateChimeWebhookConfiguration on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChimeWebhookConfiguration on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method CreateChimeWebhookConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChimeWebhookConfiguration.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $CreateChimeWebhookConfigurationResult =
      $chatbot->CreateChimeWebhookConfiguration(
      ConfigurationName => 'MyConfigurationName',
      IamRoleArn        => 'MyArn',
      SnsTopicArns      => [
        'MyArn', ...    # min: 12, max: 1224
      ],
      WebhookDescription => 'MyChimeWebhookDescription',
      WebhookUrl         => 'MyChimeWebhookUrl',
      LoggingLevel       => 'MyCustomerCwLogLevel',        # OPTIONAL
      Tags               => [
        {
          TagKey   => 'MyTagKey',      # min: 1, max: 128
          TagValue => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $WebhookConfiguration =
      $CreateChimeWebhookConfigurationResult->WebhookConfiguration;

    # Returns a L<Paws::Chatbot::CreateChimeWebhookConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/CreateChimeWebhookConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationName => Str

The name of the configuration.



=head2 B<REQUIRED> IamRoleArn => Str

A user-defined role that AWS Chatbot assumes. This is not the
service-linked role.

For more information, see IAM policies for AWS Chatbot
(https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html)
in the I< AWS Chatbot Administrator Guide>.



=head2 LoggingLevel => Str

Logging levels include C<ERROR>, C<INFO>, or C<NONE>.



=head2 B<REQUIRED> SnsTopicArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the SNS topics that deliver
notifications to AWS Chatbot.



=head2 Tags => ArrayRef[L<Paws::Chatbot::Tag>]

A map of tags assigned to a resource. A tag is a string-to-string map
of key-value pairs.



=head2 B<REQUIRED> WebhookDescription => Str

A description of the webhook. We recommend using the convention
C<RoomName/WebhookName>.

For more information, see Tutorial: Get started with Amazon Chime
(https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html)
in the I< AWS Chatbot Administrator Guide>.



=head2 B<REQUIRED> WebhookUrl => Str

The URL for the Amazon Chime webhook.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChimeWebhookConfiguration in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


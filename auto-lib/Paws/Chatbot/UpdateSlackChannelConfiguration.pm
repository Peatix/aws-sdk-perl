
package Paws::Chatbot::UpdateSlackChannelConfiguration;
  use Moose;
  has ChatConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has GuardrailPolicyArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has LoggingLevel => (is => 'ro', isa => 'Str');
  has SlackChannelId => (is => 'ro', isa => 'Str', required => 1);
  has SlackChannelName => (is => 'ro', isa => 'Str');
  has SnsTopicArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserAuthorizationRequired => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSlackChannelConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-slack-channel-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::UpdateSlackChannelConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::UpdateSlackChannelConfiguration - Arguments for method UpdateSlackChannelConfiguration on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSlackChannelConfiguration on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method UpdateSlackChannelConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSlackChannelConfiguration.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $UpdateSlackChannelConfigurationResult =
      $chatbot->UpdateSlackChannelConfiguration(
      ChatConfigurationArn => 'MyChatConfigurationArn',
      SlackChannelId       => 'MySlackChannelId',
      GuardrailPolicyArns  => [
        'MyGuardrailPolicyArn', ...    # min: 11, max: 1163
      ],    # OPTIONAL
      IamRoleArn       => 'MyArn',                        # OPTIONAL
      LoggingLevel     => 'MyCustomerCwLogLevel',         # OPTIONAL
      SlackChannelName => 'MySlackChannelDisplayName',    # OPTIONAL
      SnsTopicArns     => [
        'MyArn', ...                                      # min: 12, max: 1224
      ],    # OPTIONAL
      UserAuthorizationRequired => 1,    # OPTIONAL
      );

    # Results:
    my $ChannelConfiguration =
      $UpdateSlackChannelConfigurationResult->ChannelConfiguration;

    # Returns a L<Paws::Chatbot::UpdateSlackChannelConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/UpdateSlackChannelConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChatConfigurationArn => Str

The Amazon Resource Name (ARN) of the SlackChannelConfiguration to
update.



=head2 GuardrailPolicyArns => ArrayRef[Str|Undef]

The list of IAM policy ARNs that are applied as channel guardrails. The
AWS managed C<AdministratorAccess> policy is applied by default if this
is not set.



=head2 IamRoleArn => Str

A user-defined role that AWS Chatbot assumes. This is not the
service-linked role.

For more information, see IAM policies for AWS Chatbot
(https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html)
in the I< AWS Chatbot Administrator Guide>.



=head2 LoggingLevel => Str

Logging levels include C<ERROR>, C<INFO>, or C<NONE>.



=head2 B<REQUIRED> SlackChannelId => Str

The ID of the Slack channel.

To get this ID, open Slack, right click on the channel name in the left
pane, then choose Copy Link. The channel ID is the 9-character string
at the end of the URL. For example, ABCBBLZZZ.



=head2 SlackChannelName => Str

The name of the Slack channel.



=head2 SnsTopicArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the SNS topics that deliver
notifications to AWS Chatbot.



=head2 UserAuthorizationRequired => Bool

Enables use of a user role requirement in your chat configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSlackChannelConfiguration in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


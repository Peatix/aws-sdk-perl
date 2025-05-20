
package Paws::Chatbot::CreateSlackChannelConfiguration;
  use Moose;
  has ConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has GuardrailPolicyArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has LoggingLevel => (is => 'ro', isa => 'Str');
  has SlackChannelId => (is => 'ro', isa => 'Str', required => 1);
  has SlackChannelName => (is => 'ro', isa => 'Str');
  has SlackTeamId => (is => 'ro', isa => 'Str', required => 1);
  has SnsTopicArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Chatbot::Tag]');
  has UserAuthorizationRequired => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSlackChannelConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-slack-channel-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::CreateSlackChannelConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::CreateSlackChannelConfiguration - Arguments for method CreateSlackChannelConfiguration on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSlackChannelConfiguration on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method CreateSlackChannelConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSlackChannelConfiguration.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $CreateSlackChannelConfigurationResult =
      $chatbot->CreateSlackChannelConfiguration(
      ConfigurationName   => 'MyConfigurationName',
      IamRoleArn          => 'MyArn',
      SlackChannelId      => 'MySlackChannelId',
      SlackTeamId         => 'MySlackTeamId',
      GuardrailPolicyArns => [
        'MyGuardrailPolicyArn', ...    # min: 11, max: 1163
      ],    # OPTIONAL
      LoggingLevel     => 'MyCustomerCwLogLevel',         # OPTIONAL
      SlackChannelName => 'MySlackChannelDisplayName',    # OPTIONAL
      SnsTopicArns     => [
        'MyArn', ...                                      # min: 12, max: 1224
      ],    # OPTIONAL
      Tags => [
        {
          TagKey   => 'MyTagKey',      # min: 1, max: 128
          TagValue => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      UserAuthorizationRequired => 1,    # OPTIONAL
      );

    # Results:
    my $ChannelConfiguration =
      $CreateSlackChannelConfigurationResult->ChannelConfiguration;

    # Returns a L<Paws::Chatbot::CreateSlackChannelConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/CreateSlackChannelConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationName => Str

The name of the configuration.



=head2 GuardrailPolicyArns => ArrayRef[Str|Undef]

The list of IAM policy ARNs that are applied as channel guardrails. The
AWS managed C<AdministratorAccess> policy is applied by default if this
is not set.



=head2 B<REQUIRED> IamRoleArn => Str

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



=head2 B<REQUIRED> SlackTeamId => Str

The ID of the Slack workspace authorized with AWS Chatbot.



=head2 SnsTopicArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the SNS topics that deliver
notifications to AWS Chatbot.



=head2 Tags => ArrayRef[L<Paws::Chatbot::Tag>]

A map of tags assigned to a resource. A tag is a string-to-string map
of key-value pairs.



=head2 UserAuthorizationRequired => Bool

Enables use of a user role requirement in your chat configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSlackChannelConfiguration in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


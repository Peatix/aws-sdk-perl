
package Paws::Chatbot::DeleteSlackUserIdentity;
  use Moose;
  has ChatConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has SlackTeamId => (is => 'ro', isa => 'Str', required => 1);
  has SlackUserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSlackUserIdentity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-slack-user-identity');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::DeleteSlackUserIdentityResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::DeleteSlackUserIdentity - Arguments for method DeleteSlackUserIdentity on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSlackUserIdentity on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method DeleteSlackUserIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSlackUserIdentity.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $DeleteSlackUserIdentityResult = $chatbot->DeleteSlackUserIdentity(
      ChatConfigurationArn => 'MyChatConfigurationArn',
      SlackTeamId          => 'MySlackTeamId',
      SlackUserId          => 'MySlackUserId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/DeleteSlackUserIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChatConfigurationArn => Str

The ARN of the SlackChannelConfiguration associated with the user
identity to delete.



=head2 B<REQUIRED> SlackTeamId => Str

The ID of the Slack workspace authorized with AWS Chatbot.



=head2 B<REQUIRED> SlackUserId => Str

The ID of the user in Slack




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSlackUserIdentity in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


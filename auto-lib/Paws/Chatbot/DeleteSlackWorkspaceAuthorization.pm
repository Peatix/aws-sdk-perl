
package Paws::Chatbot::DeleteSlackWorkspaceAuthorization;
  use Moose;
  has SlackTeamId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSlackWorkspaceAuthorization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-slack-workspace-authorization');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::DeleteSlackWorkspaceAuthorizationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::DeleteSlackWorkspaceAuthorization - Arguments for method DeleteSlackWorkspaceAuthorization on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSlackWorkspaceAuthorization on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method DeleteSlackWorkspaceAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSlackWorkspaceAuthorization.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $DeleteSlackWorkspaceAuthorizationResult =
      $chatbot->DeleteSlackWorkspaceAuthorization(
      SlackTeamId => 'MySlackTeamId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/DeleteSlackWorkspaceAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SlackTeamId => Str

The ID of the Slack workspace authorized with AWS Chatbot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSlackWorkspaceAuthorization in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


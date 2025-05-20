
package Paws::Chatbot::DeleteMicrosoftTeamsUserIdentity;
  use Moose;
  has ChatConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMicrosoftTeamsUserIdentity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-ms-teams-user-identity');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::DeleteMicrosoftTeamsUserIdentityResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::DeleteMicrosoftTeamsUserIdentity - Arguments for method DeleteMicrosoftTeamsUserIdentity on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMicrosoftTeamsUserIdentity on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method DeleteMicrosoftTeamsUserIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMicrosoftTeamsUserIdentity.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $DeleteMicrosoftTeamsUserIdentityResult =
      $chatbot->DeleteMicrosoftTeamsUserIdentity(
      ChatConfigurationArn => 'MyChatConfigurationArn',
      UserId               => 'MyUUID',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/DeleteMicrosoftTeamsUserIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChatConfigurationArn => Str

The ARN of the MicrosoftTeamsChannelConfiguration associated with the
user identity to delete.



=head2 B<REQUIRED> UserId => Str

The Microsoft Teams user ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMicrosoftTeamsUserIdentity in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Chatbot::GetMicrosoftTeamsChannelConfiguration;
  use Moose;
  has ChatConfigurationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMicrosoftTeamsChannelConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-ms-teams-channel-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::GetTeamsChannelConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::GetMicrosoftTeamsChannelConfiguration - Arguments for method GetMicrosoftTeamsChannelConfiguration on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMicrosoftTeamsChannelConfiguration on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method GetMicrosoftTeamsChannelConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMicrosoftTeamsChannelConfiguration.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $GetTeamsChannelConfigurationResult =
      $chatbot->GetMicrosoftTeamsChannelConfiguration(
      ChatConfigurationArn => 'MyChatConfigurationArn',

      );

    # Results:
    my $ChannelConfiguration =
      $GetTeamsChannelConfigurationResult->ChannelConfiguration;

    # Returns a L<Paws::Chatbot::GetTeamsChannelConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/GetMicrosoftTeamsChannelConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChatConfigurationArn => Str

The Amazon Resource Name (ARN) of the
MicrosoftTeamsChannelConfiguration to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMicrosoftTeamsChannelConfiguration in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


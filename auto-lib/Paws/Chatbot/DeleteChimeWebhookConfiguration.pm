
package Paws::Chatbot::DeleteChimeWebhookConfiguration;
  use Moose;
  has ChatConfigurationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChimeWebhookConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-chime-webhook-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::DeleteChimeWebhookConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::DeleteChimeWebhookConfiguration - Arguments for method DeleteChimeWebhookConfiguration on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteChimeWebhookConfiguration on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method DeleteChimeWebhookConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteChimeWebhookConfiguration.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $DeleteChimeWebhookConfigurationResult =
      $chatbot->DeleteChimeWebhookConfiguration(
      ChatConfigurationArn => 'MyChatConfigurationArn',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/DeleteChimeWebhookConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChatConfigurationArn => Str

The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteChimeWebhookConfiguration in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


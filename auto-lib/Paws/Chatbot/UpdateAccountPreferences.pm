
package Paws::Chatbot::UpdateAccountPreferences;
  use Moose;
  has TrainingDataCollectionEnabled => (is => 'ro', isa => 'Bool');
  has UserAuthorizationRequired => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountPreferences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-account-preferences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::UpdateAccountPreferencesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::UpdateAccountPreferences - Arguments for method UpdateAccountPreferences on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountPreferences on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method UpdateAccountPreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountPreferences.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $UpdateAccountPreferencesResult = $chatbot->UpdateAccountPreferences(
      TrainingDataCollectionEnabled => 1,    # OPTIONAL
      UserAuthorizationRequired     => 1,    # OPTIONAL
    );

    # Results:
    my $AccountPreferences =
      $UpdateAccountPreferencesResult->AccountPreferences;

    # Returns a L<Paws::Chatbot::UpdateAccountPreferencesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/UpdateAccountPreferences>

=head1 ATTRIBUTES


=head2 TrainingDataCollectionEnabled => Bool

Turns on training data collection.

This helps improve the AWS Chatbot experience by allowing AWS Chatbot
to store and use your customer information, such as AWS Chatbot
configurations, notifications, user inputs, AWS Chatbot generated
responses, and interaction data. This data helps us to continuously
improve and develop Artificial Intelligence (AI) technologies. Your
data is not shared with any third parties and is protected using
sophisticated controls to prevent unauthorized access and misuse. AWS
Chatbot does not store or use interactions in chat channels with Amazon
Q for training AI technologies for AWS Chatbot.



=head2 UserAuthorizationRequired => Bool

Enables use of a user role requirement in your chat configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountPreferences in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


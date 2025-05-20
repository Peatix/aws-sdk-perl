
package Paws::Chatbot::GetAccountPreferences;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountPreferences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-account-preferences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::GetAccountPreferencesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::GetAccountPreferences - Arguments for method GetAccountPreferences on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccountPreferences on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method GetAccountPreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccountPreferences.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $GetAccountPreferencesResult = $chatbot->GetAccountPreferences();

    # Results:
    my $AccountPreferences = $GetAccountPreferencesResult->AccountPreferences;

    # Returns a L<Paws::Chatbot::GetAccountPreferencesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/GetAccountPreferences>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccountPreferences in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


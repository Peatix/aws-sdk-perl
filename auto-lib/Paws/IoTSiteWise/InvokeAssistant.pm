
package Paws::IoTSiteWise::InvokeAssistant;
  use Moose;
  has ConversationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'conversationId');
  has EnableTrace => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableTrace');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeAssistant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assistant/invocation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::InvokeAssistantResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::InvokeAssistant - Arguments for method InvokeAssistant on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeAssistant on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method InvokeAssistant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeAssistant.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $InvokeAssistantResponse = $iotsitewise->InvokeAssistant(
      Message        => 'MyMessageInput',
      ConversationId => 'MyConversationId',    # OPTIONAL
      EnableTrace    => 1,                     # OPTIONAL
    );

    # Results:
    my $Body           = $InvokeAssistantResponse->Body;
    my $ConversationId = $InvokeAssistantResponse->ConversationId;

    # Returns a L<Paws::IoTSiteWise::InvokeAssistantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/InvokeAssistant>

=head1 ATTRIBUTES


=head2 ConversationId => Str

The ID assigned to a conversation. IoT SiteWise automatically generates
a unique ID for you, and this parameter is never required. However, if
you prefer to have your own ID, you must specify it here in UUID
format. If you specify your own ID, it must be globally unique.



=head2 EnableTrace => Bool

Specifies if to turn trace on or not. It is used to track the SiteWise
Assistant's reasoning, and data access process.



=head2 B<REQUIRED> Message => Str

A text message sent to the SiteWise Assistant by the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeAssistant in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


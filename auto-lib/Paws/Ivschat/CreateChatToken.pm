
package Paws::Ivschat::CreateChatToken;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Ivschat::ChatTokenAttributes', traits => ['NameInRequest'], request_name => 'attributes');
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capabilities');
  has RoomIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roomIdentifier', required => 1);
  has SessionDurationInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'sessionDurationInMinutes');
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChatToken');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateChatToken');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Ivschat::CreateChatTokenResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::CreateChatToken - Arguments for method CreateChatToken on L<Paws::Ivschat>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChatToken on the
L<Amazon Interactive Video Service Chat|Paws::Ivschat> service. Use the attributes of this class
as arguments to method CreateChatToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChatToken.

=head1 SYNOPSIS

    my $ivschat = Paws->service('Ivschat');
    my $CreateChatTokenResponse = $ivschat->CreateChatToken(
      RoomIdentifier => 'MyRoomIdentifier',
      UserId         => 'MyUserID',
      Attributes     => { 'MyString' => 'MyString', },    # OPTIONAL
      Capabilities   => [
        'SEND_MESSAGE',
        ...    # values: SEND_MESSAGE, DISCONNECT_USER, DELETE_MESSAGE
      ],    # OPTIONAL
      SessionDurationInMinutes => 1,    # OPTIONAL
    );

    # Results:
    my $SessionExpirationTime = $CreateChatTokenResponse->SessionExpirationTime;
    my $Token                 = $CreateChatTokenResponse->Token;
    my $TokenExpirationTime   = $CreateChatTokenResponse->TokenExpirationTime;

    # Returns a L<Paws::Ivschat::CreateChatTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivschat/CreateChatToken>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::Ivschat::ChatTokenAttributes>

Application-provided attributes to encode into the token and attach to
a chat session. Map keys and values can contain UTF-8 encoded text. The
maximum length of this field is 1 KB total.



=head2 Capabilities => ArrayRef[Str|Undef]

Set of capabilities that the user is allowed to perform in the room.
Default: None (the capability to view messages is implicitly included
in all requests).



=head2 B<REQUIRED> RoomIdentifier => Str

Identifier of the room that the client is trying to access. Currently
this must be an ARN.



=head2 SessionDurationInMinutes => Int

Session duration (in minutes), after which the session expires.
Default: 60 (1 hour).



=head2 B<REQUIRED> UserId => Str

Application-provided ID that uniquely identifies the user associated
with this token. This can be any UTF-8 encoded text.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChatToken in L<Paws::Ivschat>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


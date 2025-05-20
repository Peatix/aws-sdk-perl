
package Paws::Ivschat::UpdateRoom;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier', required => 1);
  has LoggingConfigurationIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'loggingConfigurationIdentifiers');
  has MaximumMessageLength => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maximumMessageLength');
  has MaximumMessageRatePerSecond => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maximumMessageRatePerSecond');
  has MessageReviewHandler => (is => 'ro', isa => 'Paws::Ivschat::MessageReviewHandler', traits => ['NameInRequest'], request_name => 'messageReviewHandler');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoom');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateRoom');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Ivschat::UpdateRoomResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::UpdateRoom - Arguments for method UpdateRoom on L<Paws::Ivschat>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoom on the
L<Amazon Interactive Video Service Chat|Paws::Ivschat> service. Use the attributes of this class
as arguments to method UpdateRoom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoom.

=head1 SYNOPSIS

    my $ivschat = Paws->service('Ivschat');
    my $UpdateRoomResponse = $ivschat->UpdateRoom(
      Identifier                      => 'MyRoomIdentifier',
      LoggingConfigurationIdentifiers => [
        'MyLoggingConfigurationIdentifier', ...    # min: 1, max: 128
      ],    # OPTIONAL
      MaximumMessageLength        => 1,    # OPTIONAL
      MaximumMessageRatePerSecond => 1,    # OPTIONAL
      MessageReviewHandler        => {
        FallbackResult => 'ALLOW',          # values: ALLOW, DENY; OPTIONAL
        Uri            => 'MyLambdaArn',    # max: 170; OPTIONAL
      },    # OPTIONAL
      Name => 'MyRoomName',    # OPTIONAL
    );

    # Results:
    my $Arn        = $UpdateRoomResponse->Arn;
    my $CreateTime = $UpdateRoomResponse->CreateTime;
    my $Id         = $UpdateRoomResponse->Id;
    my $LoggingConfigurationIdentifiers =
      $UpdateRoomResponse->LoggingConfigurationIdentifiers;
    my $MaximumMessageLength = $UpdateRoomResponse->MaximumMessageLength;
    my $MaximumMessageRatePerSecond =
      $UpdateRoomResponse->MaximumMessageRatePerSecond;
    my $MessageReviewHandler = $UpdateRoomResponse->MessageReviewHandler;
    my $Name                 = $UpdateRoomResponse->Name;
    my $Tags                 = $UpdateRoomResponse->Tags;
    my $UpdateTime           = $UpdateRoomResponse->UpdateTime;

    # Returns a L<Paws::Ivschat::UpdateRoomResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivschat/UpdateRoom>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

Identifier of the room to be updated. Currently this must be an ARN.



=head2 LoggingConfigurationIdentifiers => ArrayRef[Str|Undef]

Array of logging-configuration identifiers attached to the room.



=head2 MaximumMessageLength => Int

The maximum number of characters in a single message. Messages are
expected to be UTF-8 encoded and this limit applies specifically to
rune/code-point count, not number of bytes. Default: 500.



=head2 MaximumMessageRatePerSecond => Int

Maximum number of messages per second that can be sent to the room (by
all clients). Default: 10.



=head2 MessageReviewHandler => L<Paws::Ivschat::MessageReviewHandler>

Configuration information for optional review of messages. Specify an
empty C<uri> string to disassociate a message review handler from the
specified room.



=head2 Name => Str

Room name. The value does not need to be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoom in L<Paws::Ivschat>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


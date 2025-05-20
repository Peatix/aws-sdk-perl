
package Paws::Ivschat::CreateRoom;
  use Moose;
  has LoggingConfigurationIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'loggingConfigurationIdentifiers');
  has MaximumMessageLength => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maximumMessageLength');
  has MaximumMessageRatePerSecond => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maximumMessageRatePerSecond');
  has MessageReviewHandler => (is => 'ro', isa => 'Paws::Ivschat::MessageReviewHandler', traits => ['NameInRequest'], request_name => 'messageReviewHandler');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::Ivschat::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoom');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateRoom');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Ivschat::CreateRoomResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::CreateRoom - Arguments for method CreateRoom on L<Paws::Ivschat>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRoom on the
L<Amazon Interactive Video Service Chat|Paws::Ivschat> service. Use the attributes of this class
as arguments to method CreateRoom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRoom.

=head1 SYNOPSIS

    my $ivschat = Paws->service('Ivschat');
    my $CreateRoomResponse = $ivschat->CreateRoom(
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
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn        = $CreateRoomResponse->Arn;
    my $CreateTime = $CreateRoomResponse->CreateTime;
    my $Id         = $CreateRoomResponse->Id;
    my $LoggingConfigurationIdentifiers =
      $CreateRoomResponse->LoggingConfigurationIdentifiers;
    my $MaximumMessageLength = $CreateRoomResponse->MaximumMessageLength;
    my $MaximumMessageRatePerSecond =
      $CreateRoomResponse->MaximumMessageRatePerSecond;
    my $MessageReviewHandler = $CreateRoomResponse->MessageReviewHandler;
    my $Name                 = $CreateRoomResponse->Name;
    my $Tags                 = $CreateRoomResponse->Tags;
    my $UpdateTime           = $CreateRoomResponse->UpdateTime;

    # Returns a L<Paws::Ivschat::CreateRoomResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivschat/CreateRoom>

=head1 ATTRIBUTES


=head2 LoggingConfigurationIdentifiers => ArrayRef[Str|Undef]

Array of logging-configuration identifiers attached to the room.



=head2 MaximumMessageLength => Int

Maximum number of characters in a single message. Messages are expected
to be UTF-8 encoded and this limit applies specifically to
rune/code-point count, not number of bytes. Default: 500.



=head2 MaximumMessageRatePerSecond => Int

Maximum number of messages per second that can be sent to the room (by
all clients). Default: 10.



=head2 MessageReviewHandler => L<Paws::Ivschat::MessageReviewHandler>

Configuration information for optional review of messages.



=head2 Name => Str

Room name. The value does not need to be unique.



=head2 Tags => L<Paws::Ivschat::Tags>

Tags to attach to the resource. Array of maps, each of the form
C<string:string (key:value)>. See Best practices and strategies
(https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
in I<Tagging Amazon Web Services Resources and Tag Editor> for details,
including restrictions that apply to tags and "Tag naming limits and
requirements"; Amazon IVS Chat has no constraints beyond what is
documented there.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRoom in L<Paws::Ivschat>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


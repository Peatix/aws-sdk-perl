
package Paws::Ivschat::ListRooms;
  use Moose;
  has LoggingConfigurationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loggingConfigurationIdentifier');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has MessageReviewHandlerUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'messageReviewHandlerUri');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRooms');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListRooms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Ivschat::ListRoomsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::ListRooms - Arguments for method ListRooms on L<Paws::Ivschat>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRooms on the
L<Amazon Interactive Video Service Chat|Paws::Ivschat> service. Use the attributes of this class
as arguments to method ListRooms.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRooms.

=head1 SYNOPSIS

    my $ivschat = Paws->service('Ivschat');
    my $ListRoomsResponse = $ivschat->ListRooms(
      LoggingConfigurationIdentifier =>
        'MyLoggingConfigurationIdentifier',    # OPTIONAL
      MaxResults              => 1,                      # OPTIONAL
      MessageReviewHandlerUri => 'MyLambdaArn',          # OPTIONAL
      Name                    => 'MyRoomName',           # OPTIONAL
      NextToken               => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRoomsResponse->NextToken;
    my $Rooms     = $ListRoomsResponse->Rooms;

    # Returns a L<Paws::Ivschat::ListRoomsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivschat/ListRooms>

=head1 ATTRIBUTES


=head2 LoggingConfigurationIdentifier => Str

Logging-configuration identifier.



=head2 MaxResults => Int

Maximum number of rooms to return. Default: 50.



=head2 MessageReviewHandlerUri => Str

Filters the list to match the specified message review handler URI.



=head2 Name => Str

Filters the list to match the specified room name.



=head2 NextToken => Str

The first room to retrieve. This is used for pagination; see the
C<nextToken> response field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRooms in L<Paws::Ivschat>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


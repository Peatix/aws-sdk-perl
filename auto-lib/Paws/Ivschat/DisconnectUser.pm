
package Paws::Ivschat::DisconnectUser;
  use Moose;
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason');
  has RoomIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roomIdentifier', required => 1);
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisconnectUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DisconnectUser');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Ivschat::DisconnectUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::DisconnectUser - Arguments for method DisconnectUser on L<Paws::Ivschat>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisconnectUser on the
L<Amazon Interactive Video Service Chat|Paws::Ivschat> service. Use the attributes of this class
as arguments to method DisconnectUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisconnectUser.

=head1 SYNOPSIS

    my $ivschat = Paws->service('Ivschat');
    my $DisconnectUserResponse = $ivschat->DisconnectUser(
      RoomIdentifier => 'MyRoomIdentifier',
      UserId         => 'MyUserID',
      Reason         => 'MyReason',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivschat/DisconnectUser>

=head1 ATTRIBUTES


=head2 Reason => Str

Reason for disconnecting the user.



=head2 B<REQUIRED> RoomIdentifier => Str

Identifier of the room from which the user's clients should be
disconnected. Currently this must be an ARN.



=head2 B<REQUIRED> UserId => Str

ID of the user (connection) to disconnect from the room.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisconnectUser in L<Paws::Ivschat>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


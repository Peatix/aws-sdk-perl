
package Paws::Ivschat::DeleteMessage;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason');
  has RoomIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roomIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteMessage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Ivschat::DeleteMessageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Ivschat::DeleteMessage - Arguments for method DeleteMessage on L<Paws::Ivschat>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMessage on the
L<Amazon Interactive Video Service Chat|Paws::Ivschat> service. Use the attributes of this class
as arguments to method DeleteMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMessage.

=head1 SYNOPSIS

    my $ivschat = Paws->service('Ivschat');
    my $DeleteMessageResponse = $ivschat->DeleteMessage(
      Id             => 'MyMessageID',
      RoomIdentifier => 'MyRoomIdentifier',
      Reason         => 'MyReason',           # OPTIONAL
    );

    # Results:
    my $Id = $DeleteMessageResponse->Id;

    # Returns a L<Paws::Ivschat::DeleteMessageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivschat/DeleteMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

ID of the message to be deleted. This is the C<Id> field in the
received message (see Message (Subscribe)
(https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-message-subscribe.html)
in the Chat Messaging API).



=head2 Reason => Str

Reason for deleting the message.



=head2 B<REQUIRED> RoomIdentifier => Str

Identifier of the room where the message should be deleted. Currently
this must be an ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMessage in L<Paws::Ivschat>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


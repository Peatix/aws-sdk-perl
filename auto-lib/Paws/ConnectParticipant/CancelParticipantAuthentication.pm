
package Paws::ConnectParticipant::CancelParticipantAuthentication;
  use Moose;
  has ConnectionToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Bearer', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelParticipantAuthentication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/participant/cancel-authentication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectParticipant::CancelParticipantAuthenticationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::CancelParticipantAuthentication - Arguments for method CancelParticipantAuthentication on L<Paws::ConnectParticipant>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelParticipantAuthentication on the
L<Amazon Connect Participant Service|Paws::ConnectParticipant> service. Use the attributes of this class
as arguments to method CancelParticipantAuthentication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelParticipantAuthentication.

=head1 SYNOPSIS

    my $participant.connect = Paws->service('ConnectParticipant');
    my $CancelParticipantAuthenticationResponse =
      $participant . connect->CancelParticipantAuthentication(
      ConnectionToken => 'MyParticipantToken',
      SessionId       => 'MySessionId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/participant.connect/CancelParticipantAuthentication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionToken => Str

The authentication token associated with the participant's connection.



=head2 B<REQUIRED> SessionId => Str

The C<sessionId> provided in the C<authenticationInitiated> event.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelParticipantAuthentication in L<Paws::ConnectParticipant>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


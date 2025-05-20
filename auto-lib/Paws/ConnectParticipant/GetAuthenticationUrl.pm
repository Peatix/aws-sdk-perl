
package Paws::ConnectParticipant::GetAuthenticationUrl;
  use Moose;
  has ConnectionToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Bearer', required => 1);
  has RedirectUri => (is => 'ro', isa => 'Str', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAuthenticationUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/participant/authentication-url');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectParticipant::GetAuthenticationUrlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::GetAuthenticationUrl - Arguments for method GetAuthenticationUrl on L<Paws::ConnectParticipant>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAuthenticationUrl on the
L<Amazon Connect Participant Service|Paws::ConnectParticipant> service. Use the attributes of this class
as arguments to method GetAuthenticationUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAuthenticationUrl.

=head1 SYNOPSIS

    my $participant.connect = Paws->service('ConnectParticipant');
    my $GetAuthenticationUrlResponse =
      $participant . connect->GetAuthenticationUrl(
      ConnectionToken => 'MyParticipantToken',
      RedirectUri     => 'MyRedirectURI',
      SessionId       => 'MySessionId',

      );

    # Results:
    my $AuthenticationUrl = $GetAuthenticationUrlResponse->AuthenticationUrl;

   # Returns a L<Paws::ConnectParticipant::GetAuthenticationUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/participant.connect/GetAuthenticationUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionToken => Str

The authentication token associated with the participant's connection.



=head2 B<REQUIRED> RedirectUri => Str

The URL where the customer will be redirected after Amazon Cognito
authorizes the user.



=head2 B<REQUIRED> SessionId => Str

The sessionId provided in the authenticationInitiated event.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAuthenticationUrl in L<Paws::ConnectParticipant>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


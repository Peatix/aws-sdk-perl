
package Paws::Connect::UpdateParticipantAuthentication;
  use Moose;
  has Code => (is => 'ro', isa => 'Str');
  has Error => (is => 'ro', isa => 'Str');
  has ErrorDescription => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateParticipantAuthentication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/update-participant-authentication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdateParticipantAuthenticationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateParticipantAuthentication - Arguments for method UpdateParticipantAuthentication on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateParticipantAuthentication on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateParticipantAuthentication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateParticipantAuthentication.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdateParticipantAuthenticationResponse =
      $connect->UpdateParticipantAuthentication(
      InstanceId       => 'MyInstanceId',
      State            => 'MyParticipantToken',
      Code             => 'MyAuthorizationCode',                 # OPTIONAL
      Error            => 'MyAuthenticationError',               # OPTIONAL
      ErrorDescription => 'MyAuthenticationErrorDescription',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateParticipantAuthentication>

=head1 ATTRIBUTES


=head2 Code => Str

The C<code> query parameter provided by Cognito in the C<redirectUri>.



=head2 Error => Str

The C<error> query parameter provided by Cognito in the C<redirectUri>.



=head2 ErrorDescription => Str

The C<error_description> parameter provided by Cognito in the
C<redirectUri>.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> State => Str

The C<state> query parameter that was provided by Cognito in the
C<redirectUri>. This will also match the C<state> parameter provided in
the C<AuthenticationUrl> from the GetAuthenticationUrl
(https://docs.aws.amazon.com/connect/latest/APIReference/API_GetAuthenticationUrl.html)
response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateParticipantAuthentication in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


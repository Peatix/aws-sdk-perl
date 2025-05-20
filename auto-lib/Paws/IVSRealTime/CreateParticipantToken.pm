
package Paws::IVSRealTime::CreateParticipantToken;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IVSRealTime::ParticipantTokenAttributes', traits => ['NameInRequest'], request_name => 'attributes');
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capabilities');
  has Duration => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'duration');
  has StageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageArn', required => 1);
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateParticipantToken');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateParticipantToken');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::CreateParticipantTokenResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::CreateParticipantToken - Arguments for method CreateParticipantToken on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateParticipantToken on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method CreateParticipantToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateParticipantToken.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $CreateParticipantTokenResponse = $ivsrealtime->CreateParticipantToken(
      StageArn     => 'MyStageArn',
      Attributes   => { 'MyString' => 'MyString', },    # OPTIONAL
      Capabilities => [
        'PUBLISH', ...    # values: PUBLISH, SUBSCRIBE
      ],    # OPTIONAL
      Duration => 1,                             # OPTIONAL
      UserId   => 'MyParticipantTokenUserId',    # OPTIONAL
    );

    # Results:
    my $ParticipantToken = $CreateParticipantTokenResponse->ParticipantToken;

    # Returns a L<Paws::IVSRealTime::CreateParticipantTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/CreateParticipantToken>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::IVSRealTime::ParticipantTokenAttributes>

Application-provided attributes to encode into the token and attach to
a stage. Map keys and values can contain UTF-8 encoded text. The
maximum length of this field is 1 KB total. I<This field is exposed to
all stage participants and should not be used for personally
identifying, confidential, or sensitive information.>



=head2 Capabilities => ArrayRef[Str|Undef]

Set of capabilities that the user is allowed to perform in the stage.
Default: C<PUBLISH, SUBSCRIBE>.



=head2 Duration => Int

Duration (in minutes), after which the token expires. Default: 720 (12
hours).



=head2 B<REQUIRED> StageArn => Str

ARN of the stage to which this token is scoped.



=head2 UserId => Str

Name that can be specified to help identify the token. This can be any
UTF-8 encoded text. I<This field is exposed to all stage participants
and should not be used for personally identifying, confidential, or
sensitive information.>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateParticipantToken in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::ChimeSDKVoice::CreateVoiceProfile;
  use Moose;
  has SpeakerSearchTaskId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVoiceProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::CreateVoiceProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreateVoiceProfile - Arguments for method CreateVoiceProfile on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVoiceProfile on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method CreateVoiceProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVoiceProfile.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $CreateVoiceProfileResponse = $voice -chime->CreateVoiceProfile(
      SpeakerSearchTaskId => 'MyNonEmptyString256',

    );

    # Results:
    my $VoiceProfile = $CreateVoiceProfileResponse->VoiceProfile;

    # Returns a L<Paws::ChimeSDKVoice::CreateVoiceProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/CreateVoiceProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SpeakerSearchTaskId => Str

The ID of the speaker search task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVoiceProfile in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


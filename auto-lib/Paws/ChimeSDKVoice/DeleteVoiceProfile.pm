
package Paws::ChimeSDKVoice::DeleteVoiceProfile;
  use Moose;
  has VoiceProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'VoiceProfileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVoiceProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-profiles/{VoiceProfileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::DeleteVoiceProfile - Arguments for method DeleteVoiceProfile on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVoiceProfile on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method DeleteVoiceProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVoiceProfile.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    $voice -chime->DeleteVoiceProfile(
      VoiceProfileId => 'MyNonEmptyString256',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/DeleteVoiceProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VoiceProfileId => Str

The voice profile ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVoiceProfile in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


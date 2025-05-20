
package Paws::VoiceID::OptOutSpeaker;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has SpeakerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'OptOutSpeaker');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VoiceID::OptOutSpeakerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::OptOutSpeaker - Arguments for method OptOutSpeaker on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method OptOutSpeaker on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method OptOutSpeaker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to OptOutSpeaker.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    my $OptOutSpeakerResponse = $voiceid->OptOutSpeaker(
      DomainId  => 'MyDomainId',
      SpeakerId => 'MySpeakerId',

    );

    # Results:
    my $Speaker = $OptOutSpeakerResponse->Speaker;

    # Returns a L<Paws::VoiceID::OptOutSpeakerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/OptOutSpeaker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The identifier of the domain that contains the speaker.



=head2 B<REQUIRED> SpeakerId => Str

The identifier of the speaker you want opted-out.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method OptOutSpeaker in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


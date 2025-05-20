
package Paws::VoiceID::DescribeSpeaker;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has SpeakerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpeaker');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VoiceID::DescribeSpeakerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::DescribeSpeaker - Arguments for method DescribeSpeaker on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSpeaker on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method DescribeSpeaker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSpeaker.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    my $DescribeSpeakerResponse = $voiceid->DescribeSpeaker(
      DomainId  => 'MyDomainId',
      SpeakerId => 'MySpeakerId',

    );

    # Results:
    my $Speaker = $DescribeSpeakerResponse->Speaker;

    # Returns a L<Paws::VoiceID::DescribeSpeakerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/DescribeSpeaker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The identifier of the domain that contains the speaker.



=head2 B<REQUIRED> SpeakerId => Str

The identifier of the speaker you are describing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSpeaker in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


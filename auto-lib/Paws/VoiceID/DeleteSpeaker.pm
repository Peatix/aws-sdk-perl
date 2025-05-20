
package Paws::VoiceID::DeleteSpeaker;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has SpeakerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSpeaker');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::DeleteSpeaker - Arguments for method DeleteSpeaker on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSpeaker on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method DeleteSpeaker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSpeaker.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    $voiceid->DeleteSpeaker(
      DomainId  => 'MyDomainId',
      SpeakerId => 'MySpeakerId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/DeleteSpeaker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The identifier of the domain that contains the speaker.



=head2 B<REQUIRED> SpeakerId => Str

The identifier of the speaker you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSpeaker in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


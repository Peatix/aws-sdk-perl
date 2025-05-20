
package Paws::IVSRealTime::CreateEncoderConfigurationResponse;
  use Moose;
  has EncoderConfiguration => (is => 'ro', isa => 'Paws::IVSRealTime::EncoderConfiguration', traits => ['NameInRequest'], request_name => 'encoderConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::CreateEncoderConfigurationResponse

=head1 ATTRIBUTES


=head2 EncoderConfiguration => L<Paws::IVSRealTime::EncoderConfiguration>

The EncoderConfiguration that was created.


=head2 _request_id => Str


=cut


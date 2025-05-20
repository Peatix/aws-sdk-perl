
package Paws::MediaConvert::ProbeResponse;
  use Moose;
  has ProbeResults => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::ProbeResult]', traits => ['NameInRequest'], request_name => 'probeResults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ProbeResponse

=head1 ATTRIBUTES


=head2 ProbeResults => ArrayRef[L<Paws::MediaConvert::ProbeResult>]

Probe results for your media file.


=head2 _request_id => Str


=cut


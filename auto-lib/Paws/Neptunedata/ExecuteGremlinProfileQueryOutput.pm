
package Paws::Neptunedata::ExecuteGremlinProfileQueryOutput;
  use Moose;
  has Output => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'output');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Output');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ExecuteGremlinProfileQueryOutput

=head1 ATTRIBUTES


=head2 Output => Str

A text blob containing the Gremlin Profile result. See Gremlin profile
API in Neptune
(https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html)
for details.


=head2 _request_id => Str


=cut


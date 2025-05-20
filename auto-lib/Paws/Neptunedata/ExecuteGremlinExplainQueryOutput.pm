
package Paws::Neptunedata::ExecuteGremlinExplainQueryOutput;
  use Moose;
  has Output => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'output');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Output');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ExecuteGremlinExplainQueryOutput

=head1 ATTRIBUTES


=head2 Output => Str

A text blob containing the Gremlin explain result, as described in
Tuning Gremlin queries
(https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-traversal-tuning.html).


=head2 _request_id => Str


=cut


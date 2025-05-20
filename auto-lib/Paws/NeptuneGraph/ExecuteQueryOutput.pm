
package Paws::NeptuneGraph::ExecuteQueryOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'payload', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ExecuteQueryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Payload => Str

The query results.


=head2 _request_id => Str


=cut


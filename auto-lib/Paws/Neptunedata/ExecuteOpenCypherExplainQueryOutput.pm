
package Paws::Neptunedata::ExecuteOpenCypherExplainQueryOutput;
  use Moose;
  has Results => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'results', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Results');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ExecuteOpenCypherExplainQueryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Results => Str

A text blob containing the openCypher C<explain> results.


=head2 _request_id => Str


=cut


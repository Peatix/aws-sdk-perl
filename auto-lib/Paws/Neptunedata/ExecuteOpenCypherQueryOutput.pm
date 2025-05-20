
package Paws::Neptunedata::ExecuteOpenCypherQueryOutput;
  use Moose;
  has Results => (is => 'ro', isa => 'Paws::Neptunedata::Document', traits => ['NameInRequest'], request_name => 'results', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ExecuteOpenCypherQueryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Results => L<Paws::Neptunedata::Document>

The openCypherquery results.


=head2 _request_id => Str


=cut


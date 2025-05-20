
package Paws::B2bi::StartTransformerJobResponse;
  use Moose;
  has TransformerJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transformerJobId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::StartTransformerJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TransformerJobId => Str

Returns the unique, system-generated identifier for a transformer run.


=head2 _request_id => Str


=cut

1;
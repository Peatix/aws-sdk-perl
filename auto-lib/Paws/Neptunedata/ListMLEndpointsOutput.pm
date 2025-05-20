
package Paws::Neptunedata::ListMLEndpointsOutput;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ListMLEndpointsOutput

=head1 ATTRIBUTES


=head2 Ids => ArrayRef[Str|Undef]

A page from the list of inference endpoint IDs.


=head2 _request_id => Str


=cut


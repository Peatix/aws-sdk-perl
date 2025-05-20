
package Paws::Neptunedata::CancelOpenCypherQueryOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'payload');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::CancelOpenCypherQueryOutput

=head1 ATTRIBUTES


=head2 Payload => Bool

The cancelation payload for the openCypher query.


=head2 Status => Str

The cancellation status of the openCypher query.


=head2 _request_id => Str


=cut


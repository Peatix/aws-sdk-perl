
package Paws::Neptunedata::CancelLoaderJobOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::CancelLoaderJobOutput

=head1 ATTRIBUTES


=head2 Status => Str

The cancellation status.


=head2 _request_id => Str


=cut


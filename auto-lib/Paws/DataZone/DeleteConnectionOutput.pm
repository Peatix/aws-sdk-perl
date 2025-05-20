
package Paws::DataZone::DeleteConnectionOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DeleteConnectionOutput

=head1 ATTRIBUTES


=head2 Status => Str

The status of the action.


=head2 _request_id => Str


=cut


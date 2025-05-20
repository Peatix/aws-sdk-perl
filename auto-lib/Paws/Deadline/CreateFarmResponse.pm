
package Paws::Deadline::CreateFarmResponse;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'farmId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateFarmResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID.


=head2 _request_id => Str


=cut


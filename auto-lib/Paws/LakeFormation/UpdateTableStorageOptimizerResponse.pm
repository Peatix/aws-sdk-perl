
package Paws::LakeFormation::UpdateTableStorageOptimizerResponse;
  use Moose;
  has Result => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::UpdateTableStorageOptimizerResponse

=head1 ATTRIBUTES


=head2 Result => Str

A response indicating the success of failure of the operation.


=head2 _request_id => Str


=cut


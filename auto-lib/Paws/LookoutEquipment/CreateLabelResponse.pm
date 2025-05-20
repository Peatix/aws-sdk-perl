
package Paws::LookoutEquipment::CreateLabelResponse;
  use Moose;
  has LabelId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateLabelResponse

=head1 ATTRIBUTES


=head2 LabelId => Str

The ID of the label that you have created.


=head2 _request_id => Str


=cut

1;
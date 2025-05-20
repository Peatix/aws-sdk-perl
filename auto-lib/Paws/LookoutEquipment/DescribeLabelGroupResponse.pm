
package Paws::LookoutEquipment::DescribeLabelGroupResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has FaultCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LabelGroupArn => (is => 'ro', isa => 'Str');
  has LabelGroupName => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeLabelGroupResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The time at which the label group was created.


=head2 FaultCodes => ArrayRef[Str|Undef]

Codes indicating the type of anomaly associated with the labels in the
lagbel group.


=head2 LabelGroupArn => Str

The Amazon Resource Name (ARN) of the label group.


=head2 LabelGroupName => Str

The name of the label group.


=head2 UpdatedAt => Str

The time at which the label group was updated.


=head2 _request_id => Str


=cut

1;
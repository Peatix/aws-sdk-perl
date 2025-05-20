
package Paws::LookoutEquipment::CreateLabelGroupResponse;
  use Moose;
  has LabelGroupArn => (is => 'ro', isa => 'Str');
  has LabelGroupName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateLabelGroupResponse

=head1 ATTRIBUTES


=head2 LabelGroupArn => Str

The Amazon Resource Name (ARN) of the label group that you have
created.


=head2 LabelGroupName => Str

The name of the label group that you have created. Data in this field
will be retained for service usage. Follow best practices for the
security of your data.


=head2 _request_id => Str


=cut

1;
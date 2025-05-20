
package Paws::LookoutEquipment::DescribeLabelResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has Equipment => (is => 'ro', isa => 'Str');
  has FaultCode => (is => 'ro', isa => 'Str');
  has LabelGroupArn => (is => 'ro', isa => 'Str');
  has LabelGroupName => (is => 'ro', isa => 'Str');
  has LabelId => (is => 'ro', isa => 'Str');
  has Notes => (is => 'ro', isa => 'Str');
  has Rating => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeLabelResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The time at which the label was created.


=head2 EndTime => Str

The end time of the requested label.


=head2 Equipment => Str

Indicates that a label pertains to a particular piece of equipment.


=head2 FaultCode => Str

Indicates the type of anomaly associated with the label.

Data in this field will be retained for service usage. Follow best
practices for the security of your data.


=head2 LabelGroupArn => Str

The Amazon Resource Name (ARN) of the requested label group.


=head2 LabelGroupName => Str

The name of the requested label group.


=head2 LabelId => Str

The ID of the requested label.


=head2 Notes => Str

Metadata providing additional information about the label.

Data in this field will be retained for service usage. Follow best
practices for the security of your data.


=head2 Rating => Str

Indicates whether a labeled event represents an anomaly.

Valid values are: C<"ANOMALY">, C<"NO_ANOMALY">, C<"NEUTRAL">
=head2 StartTime => Str

The start time of the requested label.


=head2 _request_id => Str


=cut

1;
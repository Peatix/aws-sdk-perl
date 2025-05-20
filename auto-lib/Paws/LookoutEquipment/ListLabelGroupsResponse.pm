
package Paws::LookoutEquipment::ListLabelGroupsResponse;
  use Moose;
  has LabelGroupSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::LabelGroupSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListLabelGroupsResponse

=head1 ATTRIBUTES


=head2 LabelGroupSummaries => ArrayRef[L<Paws::LookoutEquipment::LabelGroupSummary>]

A summary of the label groups.


=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
label groups.


=head2 _request_id => Str


=cut

1;
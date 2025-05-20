
package Paws::LookoutEquipment::ListLabelsResponse;
  use Moose;
  has LabelSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::LabelSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListLabelsResponse

=head1 ATTRIBUTES


=head2 LabelSummaries => ArrayRef[L<Paws::LookoutEquipment::LabelSummary>]

A summary of the items in the label group.

If you don't supply the C<LabelGroupName> request parameter, or if you
supply the name of a label group that doesn't exist, C<ListLabels>
returns an empty array in C<LabelSummaries>.


=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
datasets.


=head2 _request_id => Str


=cut

1;
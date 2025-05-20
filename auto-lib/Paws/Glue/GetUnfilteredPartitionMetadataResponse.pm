
package Paws::Glue::GetUnfilteredPartitionMetadataResponse;
  use Moose;
  has AuthorizedColumns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IsRegisteredWithLakeFormation => (is => 'ro', isa => 'Bool');
  has Partition => (is => 'ro', isa => 'Paws::Glue::Partition');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUnfilteredPartitionMetadataResponse

=head1 ATTRIBUTES


=head2 AuthorizedColumns => ArrayRef[Str|Undef]

A list of column names that the user has been granted access to.


=head2 IsRegisteredWithLakeFormation => Bool

A Boolean value that indicates whether the partition location is
registered with Lake Formation.


=head2 Partition => L<Paws::Glue::Partition>

A Partition object containing the partition metadata.


=head2 _request_id => Str


=cut

1;
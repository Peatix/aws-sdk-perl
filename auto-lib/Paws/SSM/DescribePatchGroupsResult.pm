
package Paws::SSM::DescribePatchGroupsResult;
  use Moose;
  has Mappings => (is => 'ro', isa => 'ArrayRef[Paws::SSM::PatchGroupPatchBaselineMapping]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchGroupsResult

=head1 ATTRIBUTES


=head2 Mappings => ArrayRef[L<Paws::SSM::PatchGroupPatchBaselineMapping>]

Each entry in the array contains:

=over

=item *

C<PatchGroup>: string (between 1 and 256 characters. Regex:
C<^([\p{L}\p{Z}\p{N}_.:/=+\-@]*)$)>

=item *

C<PatchBaselineIdentity>: A C<PatchBaselineIdentity> element.

=back



=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;
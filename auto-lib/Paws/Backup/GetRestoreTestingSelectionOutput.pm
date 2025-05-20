
package Paws::Backup::GetRestoreTestingSelectionOutput;
  use Moose;
  has RestoreTestingSelection => (is => 'ro', isa => 'Paws::Backup::RestoreTestingSelectionForGet', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetRestoreTestingSelectionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestoreTestingSelection => L<Paws::Backup::RestoreTestingSelectionForGet>

Unique name of the restore testing selection.


=head2 _request_id => Str


=cut


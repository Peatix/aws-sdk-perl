
package Paws::WellArchitected::ImportLensOutput;
  use Moose;
  has LensArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ImportLensOutput

=head1 ATTRIBUTES


=head2 LensArn => Str

The ARN for the lens that was created or updated.


=head2 Status => Str

The status of the imported lens.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETE">, C<"ERROR">
=head2 _request_id => Str


=cut


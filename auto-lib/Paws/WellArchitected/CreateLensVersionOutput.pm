
package Paws::WellArchitected::CreateLensVersionOutput;
  use Moose;
  has LensArn => (is => 'ro', isa => 'Str');
  has LensVersion => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::CreateLensVersionOutput

=head1 ATTRIBUTES


=head2 LensArn => Str

The ARN for the lens.


=head2 LensVersion => Str

The version of the lens.


=head2 _request_id => Str


=cut



package Paws::WellArchitected::CreateTemplateShareOutput;
  use Moose;
  has ShareId => (is => 'ro', isa => 'Str');
  has TemplateArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::CreateTemplateShareOutput

=head1 ATTRIBUTES


=head2 ShareId => Str




=head2 TemplateArn => Str

The review template ARN.


=head2 _request_id => Str


=cut



package Paws::WellArchitected::GetProfileTemplateOutput;
  use Moose;
  has ProfileTemplate => (is => 'ro', isa => 'Paws::WellArchitected::ProfileTemplate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetProfileTemplateOutput

=head1 ATTRIBUTES


=head2 ProfileTemplate => L<Paws::WellArchitected::ProfileTemplate>

The profile template.


=head2 _request_id => Str


=cut


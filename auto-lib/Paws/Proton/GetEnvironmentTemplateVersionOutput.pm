
package Paws::Proton::GetEnvironmentTemplateVersionOutput;
  use Moose;
  has EnvironmentTemplateVersion => (is => 'ro', isa => 'Paws::Proton::EnvironmentTemplateVersion', traits => ['NameInRequest'], request_name => 'environmentTemplateVersion' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetEnvironmentTemplateVersionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentTemplateVersion => L<Paws::Proton::EnvironmentTemplateVersion>

The detailed data of the requested environment template version.


=head2 _request_id => Str


=cut

1;
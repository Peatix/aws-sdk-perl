
package Paws::Proton::GetServiceTemplateVersionOutput;
  use Moose;
  has ServiceTemplateVersion => (is => 'ro', isa => 'Paws::Proton::ServiceTemplateVersion', traits => ['NameInRequest'], request_name => 'serviceTemplateVersion' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetServiceTemplateVersionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceTemplateVersion => L<Paws::Proton::ServiceTemplateVersion>

The detailed data of the requested service template version.


=head2 _request_id => Str


=cut

1;
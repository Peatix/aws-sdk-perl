
package Paws::Proton::CreateServiceTemplateVersionOutput;
  use Moose;
  has ServiceTemplateVersion => (is => 'ro', isa => 'Paws::Proton::ServiceTemplateVersion', traits => ['NameInRequest'], request_name => 'serviceTemplateVersion' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateServiceTemplateVersionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceTemplateVersion => L<Paws::Proton::ServiceTemplateVersion>

The service template version summary of detail data that's returned by
Proton.


=head2 _request_id => Str


=cut

1;
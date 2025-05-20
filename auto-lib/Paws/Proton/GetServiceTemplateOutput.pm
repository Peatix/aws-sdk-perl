
package Paws::Proton::GetServiceTemplateOutput;
  use Moose;
  has ServiceTemplate => (is => 'ro', isa => 'Paws::Proton::ServiceTemplate', traits => ['NameInRequest'], request_name => 'serviceTemplate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetServiceTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceTemplate => L<Paws::Proton::ServiceTemplate>

The detailed data of the requested service template.


=head2 _request_id => Str


=cut

1;
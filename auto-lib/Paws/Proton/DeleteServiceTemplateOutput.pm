
package Paws::Proton::DeleteServiceTemplateOutput;
  use Moose;
  has ServiceTemplate => (is => 'ro', isa => 'Paws::Proton::ServiceTemplate', traits => ['NameInRequest'], request_name => 'serviceTemplate' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::DeleteServiceTemplateOutput

=head1 ATTRIBUTES


=head2 ServiceTemplate => L<Paws::Proton::ServiceTemplate>

The detailed data of the service template being deleted.


=head2 _request_id => Str


=cut

1;
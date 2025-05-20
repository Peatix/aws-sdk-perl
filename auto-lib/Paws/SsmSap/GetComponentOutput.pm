
package Paws::SsmSap::GetComponentOutput;
  use Moose;
  has Component => (is => 'ro', isa => 'Paws::SsmSap::Component');
  has Tags => (is => 'ro', isa => 'Paws::SsmSap::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::GetComponentOutput

=head1 ATTRIBUTES


=head2 Component => L<Paws::SsmSap::Component>

The component of an application registered with AWS Systems Manager for
SAP.


=head2 Tags => L<Paws::SsmSap::TagMap>

The tags of a component.


=head2 _request_id => Str


=cut


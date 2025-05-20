
package Paws::PcaConnectorAd::GetTemplateGroupAccessControlEntryResponse;
  use Moose;
  has AccessControlEntry => (is => 'ro', isa => 'Paws::PcaConnectorAd::AccessControlEntry');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::GetTemplateGroupAccessControlEntryResponse

=head1 ATTRIBUTES


=head2 AccessControlEntry => L<Paws::PcaConnectorAd::AccessControlEntry>

An access control entry allows or denies an Active Directory group from
enrolling and/or autoenrolling with a template.


=head2 _request_id => Str


=cut


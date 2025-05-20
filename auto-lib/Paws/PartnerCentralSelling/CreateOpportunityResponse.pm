
package Paws::PartnerCentralSelling::CreateOpportunityResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has PartnerOpportunityIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::CreateOpportunityResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

Read-only, system-generated C<Opportunity> unique identifier. Amazon
Web Services creates this identifier, and it's used for all subsequent
opportunity actions, such as updates, associations, and submissions. It
helps to ensure that each opportunity is accurately tracked and
managed.


=head2 LastModifiedDate => Str

C<DateTime> when the opportunity was last modified. When the
C<Opportunity> is created, its value is C<CreatedDate>.


=head2 PartnerOpportunityIdentifier => Str

Specifies the opportunity's unique identifier in the partner's CRM
system. This value is essential to track and reconcile because it's
included in the outbound payload sent back to the partner.


=head2 _request_id => Str


=cut

1;
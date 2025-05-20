
package Paws::PartnerCentralSelling::UpdateOpportunityResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedDate => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::UpdateOpportunityResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

Read-only, system generated C<Opportunity> unique identifier.


=head2 B<REQUIRED> LastModifiedDate => Str

C<DateTime> when the opportunity was last modified.


=head2 _request_id => Str


=cut

1;
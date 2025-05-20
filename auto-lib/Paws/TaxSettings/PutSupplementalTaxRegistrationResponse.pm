
package Paws::TaxSettings::PutSupplementalTaxRegistrationResponse;
  use Moose;
  has AuthorityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorityId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::PutSupplementalTaxRegistrationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorityId => Str

Unique authority ID for the supplemental TRN information that was
stored.


=head2 B<REQUIRED> Status => Str

The status of the supplemental TRN stored in the system after
processing. Based on the validation occurring on the TRN, the status
can be C<Verified>, C<Pending>, C<Rejected>, or C<Deleted>.

Valid values are: C<"Verified">, C<"Pending">, C<"Deleted">, C<"Rejected">
=head2 _request_id => Str


=cut


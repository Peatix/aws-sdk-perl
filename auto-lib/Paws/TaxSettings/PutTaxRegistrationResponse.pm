
package Paws::TaxSettings::PutTaxRegistrationResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::PutTaxRegistrationResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of your TRN stored in the system after processing. Based on
the validation occurring on the TRN, the status can be C<Verified>,
C<Pending> or C<Rejected>.

Valid values are: C<"Verified">, C<"Pending">, C<"Deleted">, C<"Rejected">
=head2 _request_id => Str


=cut


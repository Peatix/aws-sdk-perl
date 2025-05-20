
package Paws::TaxSettings::BatchPutTaxRegistrationResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::TaxSettings::BatchPutTaxRegistrationError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::BatchPutTaxRegistrationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::TaxSettings::BatchPutTaxRegistrationError>]

List of errors for the accounts the TRN information could not be added
or updated to.


=head2 Status => Str

The status of your TRN stored in the system after processing. Based on
the validation occurring on the TRN, the status can be C<Verified>,
C<Pending> or C<Rejected>.

Valid values are: C<"Verified">, C<"Pending">, C<"Deleted">, C<"Rejected">
=head2 _request_id => Str


=cut


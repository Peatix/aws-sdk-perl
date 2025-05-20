
package Paws::TaxSettings::GetTaxRegistrationResponse;
  use Moose;
  has TaxRegistration => (is => 'ro', isa => 'Paws::TaxSettings::TaxRegistration', traits => ['NameInRequest'], request_name => 'taxRegistration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::GetTaxRegistrationResponse

=head1 ATTRIBUTES


=head2 TaxRegistration => L<Paws::TaxSettings::TaxRegistration>

TRN information of the account mentioned in the request.


=head2 _request_id => Str


=cut


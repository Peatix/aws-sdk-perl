
package Paws::TaxSettings::BatchDeleteTaxRegistrationResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::TaxSettings::BatchDeleteTaxRegistrationError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::BatchDeleteTaxRegistrationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::TaxSettings::BatchDeleteTaxRegistrationError>]

The list of errors for the accounts the TRN information could not be
deleted for.


=head2 _request_id => Str


=cut


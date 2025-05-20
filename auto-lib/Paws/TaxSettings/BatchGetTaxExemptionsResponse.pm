
package Paws::TaxSettings::BatchGetTaxExemptionsResponse;
  use Moose;
  has FailedAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failedAccounts');
  has TaxExemptionDetailsMap => (is => 'ro', isa => 'Paws::TaxSettings::TaxExemptionDetailsMap', traits => ['NameInRequest'], request_name => 'taxExemptionDetailsMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::BatchGetTaxExemptionsResponse

=head1 ATTRIBUTES


=head2 FailedAccounts => ArrayRef[Str|Undef]

The list of accounts that failed to get tax exemptions.


=head2 TaxExemptionDetailsMap => L<Paws::TaxSettings::TaxExemptionDetailsMap>

The tax exemption details map of accountId and tax exemption details.


=head2 _request_id => Str


=cut


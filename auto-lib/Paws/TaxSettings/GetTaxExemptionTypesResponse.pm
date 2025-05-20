
package Paws::TaxSettings::GetTaxExemptionTypesResponse;
  use Moose;
  has TaxExemptionTypes => (is => 'ro', isa => 'ArrayRef[Paws::TaxSettings::TaxExemptionType]', traits => ['NameInRequest'], request_name => 'taxExemptionTypes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::GetTaxExemptionTypesResponse

=head1 ATTRIBUTES


=head2 TaxExemptionTypes => ArrayRef[L<Paws::TaxSettings::TaxExemptionType>]

The supported types of tax exemptions.


=head2 _request_id => Str


=cut


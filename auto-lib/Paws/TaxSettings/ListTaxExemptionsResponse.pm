
package Paws::TaxSettings::ListTaxExemptionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TaxExemptionDetailsMap => (is => 'ro', isa => 'Paws::TaxSettings::TaxExemptionDetailsMap', traits => ['NameInRequest'], request_name => 'taxExemptionDetailsMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::ListTaxExemptionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 TaxExemptionDetailsMap => L<Paws::TaxSettings::TaxExemptionDetailsMap>

The tax exemption details map of C<accountId> and tax exemption
details.


=head2 _request_id => Str


=cut


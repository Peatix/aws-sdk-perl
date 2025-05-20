
package Paws::TaxSettings::PutTaxExemptionResponse;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caseId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::PutTaxExemptionResponse

=head1 ATTRIBUTES


=head2 CaseId => Str

The customer support case ID.


=head2 _request_id => Str


=cut


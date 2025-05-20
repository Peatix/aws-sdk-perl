
package Paws::TaxSettings::ListSupplementalTaxRegistrationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TaxRegistrations => (is => 'ro', isa => 'ArrayRef[Paws::TaxSettings::SupplementalTaxRegistration]', traits => ['NameInRequest'], request_name => 'taxRegistrations', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::ListSupplementalTaxRegistrationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 B<REQUIRED> TaxRegistrations => ArrayRef[L<Paws::TaxSettings::SupplementalTaxRegistration>]

The list of supplemental tax registrations.


=head2 _request_id => Str


=cut


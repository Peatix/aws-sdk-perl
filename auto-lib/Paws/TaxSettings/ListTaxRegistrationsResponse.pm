
package Paws::TaxSettings::ListTaxRegistrationsResponse;
  use Moose;
  has AccountDetails => (is => 'ro', isa => 'ArrayRef[Paws::TaxSettings::AccountDetails]', traits => ['NameInRequest'], request_name => 'accountDetails', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings::ListTaxRegistrationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountDetails => ArrayRef[L<Paws::TaxSettings::AccountDetails>]

The list of account details. This contains account Ids and TRN
Information for each of the linked accounts.


=head2 NextToken => Str

The token to retrieve the next set of results.


=head2 _request_id => Str


=cut


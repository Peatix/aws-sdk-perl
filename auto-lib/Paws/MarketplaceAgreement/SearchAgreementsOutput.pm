
package Paws::MarketplaceAgreement::SearchAgreementsOutput;
  use Moose;
  has AgreementViewSummaries => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceAgreement::AgreementViewSummary]', traits => ['NameInRequest'], request_name => 'agreementViewSummaries' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceAgreement::SearchAgreementsOutput

=head1 ATTRIBUTES


=head2 AgreementViewSummaries => ArrayRef[L<Paws::MarketplaceAgreement::AgreementViewSummary>]

A summary of the agreement, including top-level attributes (for
example, the agreement ID, version, proposer, and acceptor).


=head2 NextToken => Str

The token used for pagination. The field is C<null> if there are no
more results.


=head2 _request_id => Str


=cut

1;
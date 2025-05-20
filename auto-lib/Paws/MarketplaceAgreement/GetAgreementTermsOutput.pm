
package Paws::MarketplaceAgreement::GetAgreementTermsOutput;
  use Moose;
  has AcceptedTerms => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceAgreement::AcceptedTerm]', traits => ['NameInRequest'], request_name => 'acceptedTerms' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceAgreement::GetAgreementTermsOutput

=head1 ATTRIBUTES


=head2 AcceptedTerms => ArrayRef[L<Paws::MarketplaceAgreement::AcceptedTerm>]

A subset of terms proposed by the proposer that have been accepted by
the acceptor as part of the agreement creation.


=head2 NextToken => Str

A token to specify where to start pagination


=head2 _request_id => Str


=cut

1;

package Paws::MarketplaceAgreement::DescribeAgreementOutput;
  use Moose;
  has AcceptanceTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'acceptanceTime' );
  has Acceptor => (is => 'ro', isa => 'Paws::MarketplaceAgreement::Acceptor', traits => ['NameInRequest'], request_name => 'acceptor' );
  has AgreementId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agreementId' );
  has AgreementType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'agreementType' );
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' );
  has EstimatedCharges => (is => 'ro', isa => 'Paws::MarketplaceAgreement::EstimatedCharges', traits => ['NameInRequest'], request_name => 'estimatedCharges' );
  has ProposalSummary => (is => 'ro', isa => 'Paws::MarketplaceAgreement::ProposalSummary', traits => ['NameInRequest'], request_name => 'proposalSummary' );
  has Proposer => (is => 'ro', isa => 'Paws::MarketplaceAgreement::Proposer', traits => ['NameInRequest'], request_name => 'proposer' );
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceAgreement::DescribeAgreementOutput

=head1 ATTRIBUTES


=head2 AcceptanceTime => Str

The date and time the offer was accepted or the agreement was created.

C<AcceptanceTime> and C<StartTime> can differ for future dated
agreements (FDAs).


=head2 Acceptor => L<Paws::MarketplaceAgreement::Acceptor>

The details of the party accepting the agreement terms. This is
commonly the buyer for C<PurchaseAgreement>.


=head2 AgreementId => Str

The unique identifier of the agreement.


=head2 AgreementType => Str

The type of agreement. Values are C<PurchaseAgreement> or
C<VendorInsightsAgreement>.


=head2 EndTime => Str

The date and time when the agreement ends. The field is C<null> for
pay-as-you-go agreements, which donE<rsquo>t have end dates.


=head2 EstimatedCharges => L<Paws::MarketplaceAgreement::EstimatedCharges>

The estimated cost of the agreement.


=head2 ProposalSummary => L<Paws::MarketplaceAgreement::ProposalSummary>

A summary of the proposal received from the proposer.


=head2 Proposer => L<Paws::MarketplaceAgreement::Proposer>

The details of the party proposing the agreement terms. This is
commonly the seller for C<PurchaseAgreement>.


=head2 StartTime => Str

The date and time when the agreement starts.


=head2 Status => Str

The current status of the agreement.

Statuses include:

=over

=item *

C<ACTIVE> E<ndash> The terms of the agreement are active.

=item *

C<ARCHIVED> E<ndash> The agreement ended without a specified reason.

=item *

C<CANCELLED> E<ndash> The acceptor ended the agreement before the
defined end date.

=item *

C<EXPIRED> E<ndash> The agreement ended on the defined end date.

=item *

C<RENEWED> E<ndash> The agreement was renewed into a new agreement (for
example, an auto-renewal).

=item *

C<REPLACED> E<ndash> The agreement was replaced using an agreement
replacement offer.

=item *

C<ROLLED_BACK> (Only applicable to inactive agreement revisions)
E<ndash> The agreement revision has been rolled back because of an
error. An earlier revision is now active.

=item *

C<SUPERCEDED> (Only applicable to inactive agreement revisions)
E<ndash> The agreement revision is no longer active and another
agreement revision is now active.

=item *

C<TERMINATED> E<ndash> The agreement ended before the defined end date
because of an AWS termination (for example, a payment failure).

=back


Valid values are: C<"ACTIVE">, C<"ARCHIVED">, C<"CANCELLED">, C<"EXPIRED">, C<"RENEWED">, C<"REPLACED">, C<"ROLLED_BACK">, C<"SUPERSEDED">, C<"TERMINATED">
=head2 _request_id => Str


=cut

1;
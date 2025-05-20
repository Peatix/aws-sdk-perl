
package Paws::DataExchange::GetReceivedDataGrantResponse;
  use Moose;
  has AcceptanceState => (is => 'ro', isa => 'Str', required => 1);
  has AcceptedAt => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has DataSetId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EndsAt => (is => 'ro', isa => 'Str');
  has GrantDistributionScope => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ReceiverPrincipal => (is => 'ro', isa => 'Str', required => 1);
  has SenderPrincipal => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::GetReceivedDataGrantResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AcceptanceState => Str

The acceptance state of the data grant.

Valid values are: C<"PENDING_RECEIVER_ACCEPTANCE">, C<"ACCEPTED">
=head2 AcceptedAt => Str

The timestamp of when the data grant was accepted.


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the data grant.


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the data grant was created.


=head2 B<REQUIRED> DataSetId => Str

The ID of the data set associated to the data grant.


=head2 Description => Str

The description of the data grant.


=head2 EndsAt => Str

The timestamp of when access to the associated data set ends.


=head2 B<REQUIRED> GrantDistributionScope => Str

The distribution scope for the data grant.

Valid values are: C<"AWS_ORGANIZATION">, C<"NONE">
=head2 B<REQUIRED> Id => Str

The ID of the data grant.


=head2 B<REQUIRED> Name => Str

The name of the data grant.


=head2 B<REQUIRED> ReceiverPrincipal => Str

The Amazon Web Services account ID of the data grant receiver.


=head2 SenderPrincipal => Str

The Amazon Web Services account ID of the data grant sender.


=head2 B<REQUIRED> UpdatedAt => Str

The timestamp of when the data grant was last updated.


=head2 _request_id => Str


=cut


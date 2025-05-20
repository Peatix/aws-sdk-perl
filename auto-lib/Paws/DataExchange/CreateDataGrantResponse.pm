
package Paws::DataExchange::CreateDataGrantResponse;
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
  has SenderPrincipal => (is => 'ro', isa => 'Str', required => 1);
  has SourceDataSetId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::DataExchange::MapOf__string');
  has UpdatedAt => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::CreateDataGrantResponse

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


=head2 B<REQUIRED> SenderPrincipal => Str

The Amazon Web Services account ID of the data grant sender.


=head2 B<REQUIRED> SourceDataSetId => Str

The ID of the data set used to create the data grant.


=head2 Tags => L<Paws::DataExchange::MapOf__string>

The tags associated to the data grant. A tag is a key-value pair.


=head2 B<REQUIRED> UpdatedAt => Str

The timestamp of when the data grant was last updated.


=head2 _request_id => Str


=cut


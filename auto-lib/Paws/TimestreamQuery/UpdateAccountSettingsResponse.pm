
package Paws::TimestreamQuery::UpdateAccountSettingsResponse;
  use Moose;
  has MaxQueryTCU => (is => 'ro', isa => 'Int');
  has QueryCompute => (is => 'ro', isa => 'Paws::TimestreamQuery::QueryComputeResponse');
  has QueryPricingModel => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::UpdateAccountSettingsResponse

=head1 ATTRIBUTES


=head2 MaxQueryTCU => Int

The configured maximum number of compute units the service will use at
any point in time to serve your queries.


=head2 QueryCompute => L<Paws::TimestreamQuery::QueryComputeResponse>

Confirms the updated account settings for querying data in your
account.


=head2 QueryPricingModel => Str

The pricing model for an account.

Valid values are: C<"BYTES_SCANNED">, C<"COMPUTE_UNITS">
=head2 _request_id => Str


=cut

1;
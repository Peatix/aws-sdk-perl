
package Paws::TimestreamQuery::DescribeAccountSettingsResponse;
  use Moose;
  has MaxQueryTCU => (is => 'ro', isa => 'Int');
  has QueryCompute => (is => 'ro', isa => 'Paws::TimestreamQuery::QueryComputeResponse');
  has QueryPricingModel => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::DescribeAccountSettingsResponse

=head1 ATTRIBUTES


=head2 MaxQueryTCU => Int

The maximum number of Timestream compute units
(https://docs.aws.amazon.com/timestream/latest/developerguide/tcu.html)
(TCUs) the service will use at any point in time to serve your queries.
To run queries, you must set a minimum capacity of 4 TCU. You can set
the maximum number of TCU in multiples of 4, for example, 4, 8, 16, 32,
and so on. This configuration is applicable only for on-demand usage of
(TCUs).


=head2 QueryCompute => L<Paws::TimestreamQuery::QueryComputeResponse>

An object that contains the usage settings for Timestream Compute Units
(TCUs) in your account for the query workload.


=head2 QueryPricingModel => Str

The pricing model for queries in your account.

The C<QueryPricingModel> parameter is used by several Timestream
operations; however, the C<UpdateAccountSettings> API operation doesn't
recognize any values other than C<COMPUTE_UNITS>.

Valid values are: C<"BYTES_SCANNED">, C<"COMPUTE_UNITS">
=head2 _request_id => Str


=cut

1;
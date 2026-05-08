
package Paws::MarketplaceMetering::BatchMeterUsageResult;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceMetering::UsageRecordResult]');
  has UnprocessedRecords => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceMetering::UsageRecord]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::BatchMeterUsageResult

=head1 ATTRIBUTES


=head2 Results => ArrayRef[L<Paws::MarketplaceMetering::UsageRecordResult>]

Contains all C<UsageRecords> processed by C<BatchMeterUsage>. These
records were either honored by Amazon Web Services Marketplace Metering
Service or were invalid. Invalid records should be fixed before being
resubmitted.


=head2 UnprocessedRecords => ArrayRef[L<Paws::MarketplaceMetering::UsageRecord>]

Contains all C<UsageRecords> that were not processed by
C<BatchMeterUsage>. This is a list of C<UsageRecords>. You can retry
the failed request by making another C<BatchMeterUsage> call with this
list as input in the C<BatchMeterUsageRequest>.


=head2 _request_id => Str


=cut

1;

package Paws::EC2::GetDeclarativePoliciesReportSummaryResult;
  use Moose;
  has AttributeSummaries => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AttributeSummary]', request_name => 'attributeSummarySet', traits => ['NameInRequest',]);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest',]);
  has NumberOfAccounts => (is => 'ro', isa => 'Int', request_name => 'numberOfAccounts', traits => ['NameInRequest',]);
  has NumberOfFailedAccounts => (is => 'ro', isa => 'Int', request_name => 'numberOfFailedAccounts', traits => ['NameInRequest',]);
  has ReportId => (is => 'ro', isa => 'Str', request_name => 'reportId', traits => ['NameInRequest',]);
  has S3Bucket => (is => 'ro', isa => 'Str', request_name => 's3Bucket', traits => ['NameInRequest',]);
  has S3Prefix => (is => 'ro', isa => 'Str', request_name => 's3Prefix', traits => ['NameInRequest',]);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest',]);
  has TargetId => (is => 'ro', isa => 'Str', request_name => 'targetId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetDeclarativePoliciesReportSummaryResult

=head1 ATTRIBUTES


=head2 AttributeSummaries => ArrayRef[L<Paws::EC2::AttributeSummary>]

The attributes described in the report.


=head2 EndTime => Str

The time when the report generation ended.


=head2 NumberOfAccounts => Int

The total number of accounts associated with the specified C<targetId>.


=head2 NumberOfFailedAccounts => Int

The number of accounts where attributes could not be retrieved in any
Region.


=head2 ReportId => Str

The ID of the report.


=head2 S3Bucket => Str

The name of the Amazon S3 bucket where the report is located.


=head2 S3Prefix => Str

The prefix for your S3 object.


=head2 StartTime => Str

The time when the report generation started.


=head2 TargetId => Str

The root ID, organizational unit ID, or account ID.

Format:

=over

=item *

For root: C<r-ab12>

=item *

For OU: C<ou-ab12-cdef1234>

=item *

For account: C<123456789012>

=back



=head2 _request_id => Str


=cut


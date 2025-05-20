
package Paws::DevOpsGuru::DescribeOrganizationHealthResponse;
  use Moose;
  has MetricsAnalyzed => (is => 'ro', isa => 'Int', required => 1);
  has OpenProactiveInsights => (is => 'ro', isa => 'Int', required => 1);
  has OpenReactiveInsights => (is => 'ro', isa => 'Int', required => 1);
  has ResourceHours => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeOrganizationHealthResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricsAnalyzed => Int

An integer that specifies the number of metrics that have been analyzed
in your organization.


=head2 B<REQUIRED> OpenProactiveInsights => Int

An integer that specifies the number of open proactive insights in your
Amazon Web Services account.


=head2 B<REQUIRED> OpenReactiveInsights => Int

An integer that specifies the number of open reactive insights in your
Amazon Web Services account.


=head2 B<REQUIRED> ResourceHours => Int

The number of Amazon DevOps Guru resource analysis hours billed to the
current Amazon Web Services account in the last hour.


=head2 _request_id => Str


=cut


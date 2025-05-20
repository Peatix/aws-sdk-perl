
package Paws::DevOpsGuru::DescribeOrganizationOverviewResponse;
  use Moose;
  has ProactiveInsights => (is => 'ro', isa => 'Int', required => 1);
  has ReactiveInsights => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeOrganizationOverviewResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProactiveInsights => Int

An integer that specifies the number of open proactive insights in your
Amazon Web Services account.


=head2 B<REQUIRED> ReactiveInsights => Int

An integer that specifies the number of open reactive insights in your
Amazon Web Services account.


=head2 _request_id => Str


=cut


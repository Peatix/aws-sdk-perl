
package Paws::InternetMonitor::GetQueryResultsOutput;
  use Moose;
  has Data => (is => 'ro', isa => 'ArrayRef[ArrayRef[Str|Undef]]', required => 1);
  has Fields => (is => 'ro', isa => 'ArrayRef[Paws::InternetMonitor::QueryField]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::GetQueryResultsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Data => ArrayRef[ArrayRef[Str|Undef]]

The data results that the query returns. Data is returned in arrays,
aligned with the C<Fields> for the query, which creates a repository of
Amazon CloudWatch Internet Monitor information for your application.
Then, you can filter the information in the repository by using
C<FilterParameters> that you define.


=head2 B<REQUIRED> Fields => ArrayRef[L<Paws::InternetMonitor::QueryField>]

The fields that the query returns data for. Fields are name-data type
pairs, such as C<availability_score>-C<float>.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut


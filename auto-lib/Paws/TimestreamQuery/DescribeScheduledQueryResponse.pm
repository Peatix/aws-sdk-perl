
package Paws::TimestreamQuery::DescribeScheduledQueryResponse;
  use Moose;
  has ScheduledQuery => (is => 'ro', isa => 'Paws::TimestreamQuery::ScheduledQueryDescription', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::DescribeScheduledQueryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduledQuery => L<Paws::TimestreamQuery::ScheduledQueryDescription>

The scheduled query.


=head2 _request_id => Str


=cut

1;
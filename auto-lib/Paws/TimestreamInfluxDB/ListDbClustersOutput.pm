
package Paws::TimestreamInfluxDB::ListDbClustersOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamInfluxDB::DbClusterSummary]', traits => ['NameInRequest'], request_name => 'items' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::ListDbClustersOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::TimestreamInfluxDB::DbClusterSummary>]

A list of Timestream for InfluxDB cluster summaries.


=head2 NextToken => Str

Token from a previous call of the operation. When this value is
provided, the service returns results from where the previous response
left off.


=head2 _request_id => Str


=cut

1;
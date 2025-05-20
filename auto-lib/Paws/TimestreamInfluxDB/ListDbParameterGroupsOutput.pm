
package Paws::TimestreamInfluxDB::ListDbParameterGroupsOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamInfluxDB::DbParameterGroupSummary]', traits => ['NameInRequest'], request_name => 'items' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::ListDbParameterGroupsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::TimestreamInfluxDB::DbParameterGroupSummary>]

A list of Timestream for InfluxDB DB parameter group summaries.


=head2 NextToken => Str

Token from a previous call of the operation. When this value is
provided, the service returns results from where the previous response
left off.


=head2 _request_id => Str


=cut

1;
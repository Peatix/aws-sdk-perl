
package Paws::EFS::DescribeReplicationConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Replications => (is => 'ro', isa => 'ArrayRef[Paws::EFS::ReplicationConfigurationDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::DescribeReplicationConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

You can use the C<NextToken> from the previous response in a subsequent
request to fetch the additional descriptions.


=head2 Replications => ArrayRef[L<Paws::EFS::ReplicationConfigurationDescription>]

The collection of replication configurations that is returned.


=head2 _request_id => Str


=cut


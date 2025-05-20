
package Paws::S3Control::GetBucketReplicationResult;
  use Moose;
  has ReplicationConfiguration => (is => 'ro', isa => 'Paws::S3Control::ReplicationConfiguration');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetBucketReplicationResult

=head1 ATTRIBUTES


=head2 ReplicationConfiguration => L<Paws::S3Control::ReplicationConfiguration>

A container for one or more replication rules. A replication
configuration must have at least one rule and you can add up to 100
rules. The maximum size of a replication configuration is 128 KB.




=cut


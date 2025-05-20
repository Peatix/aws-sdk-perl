
package Paws::Drs::DescribeReplicationConfigurationTemplatesResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::Drs::ReplicationConfigurationTemplate]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::DescribeReplicationConfigurationTemplatesResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::Drs::ReplicationConfigurationTemplate>]

An array of Replication Configuration Templates.


=head2 NextToken => Str

The token of the next Replication Configuration Template to retrieve.


=head2 _request_id => Str


=cut


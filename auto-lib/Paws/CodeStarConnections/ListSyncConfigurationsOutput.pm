
package Paws::CodeStarConnections::ListSyncConfigurationsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SyncConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarConnections::SyncConfiguration]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::ListSyncConfigurationsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that allows the operation to batch the next
results of the operation.


=head2 B<REQUIRED> SyncConfigurations => ArrayRef[L<Paws::CodeStarConnections::SyncConfiguration>]

The list of repository sync definitions returned by the request.


=head2 _request_id => Str


=cut

1;
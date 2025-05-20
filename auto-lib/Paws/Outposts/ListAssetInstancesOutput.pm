
package Paws::Outposts::ListAssetInstancesOutput;
  use Moose;
  has AssetInstances => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::AssetInstance]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListAssetInstancesOutput

=head1 ATTRIBUTES


=head2 AssetInstances => ArrayRef[L<Paws::Outposts::AssetInstance>]

List of instances owned by all accounts on the Outpost. Does not
include Amazon EBS or Amazon S3 instances.


=head2 NextToken => Str




=head2 _request_id => Str


=cut


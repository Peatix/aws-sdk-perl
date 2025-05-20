
package Paws::ResourceGroups::GroupResourcesOutput;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::FailedResource]');
  has Pending => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::PendingResource]');
  has Succeeded => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GroupResourcesOutput

=head1 ATTRIBUTES


=head2 Failed => ArrayRef[L<Paws::ResourceGroups::FailedResource>]

A list of Amazon resource names (ARNs) of any resources that this
operation failed to add to the group.


=head2 Pending => ArrayRef[L<Paws::ResourceGroups::PendingResource>]

A list of Amazon resource names (ARNs) of any resources that this
operation is still in the process adding to the group. These pending
additions continue asynchronously. You can check the status of pending
additions by using the C< ListGroupResources > operation, and checking
the C<Resources> array in the response and the C<Status> field of each
object in that array.


=head2 Succeeded => ArrayRef[Str|Undef]

A list of Amazon resource names (ARNs) of the resources that this
operation successfully added to the group.


=head2 _request_id => Str


=cut


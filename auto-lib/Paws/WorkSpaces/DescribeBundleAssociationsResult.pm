
package Paws::WorkSpaces::DescribeBundleAssociationsResult;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::BundleResourceAssociation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeBundleAssociationsResult

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[L<Paws::WorkSpaces::BundleResourceAssociation>]

List of information about the specified associations.


=head2 _request_id => Str


=cut

1;
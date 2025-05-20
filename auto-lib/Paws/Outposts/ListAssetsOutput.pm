
package Paws::Outposts::ListAssetsOutput;
  use Moose;
  has Assets => (is => 'ro', isa => 'ArrayRef[Paws::Outposts::AssetInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListAssetsOutput

=head1 ATTRIBUTES


=head2 Assets => ArrayRef[L<Paws::Outposts::AssetInfo>]

Information about the hardware assets.


=head2 NextToken => Str




=head2 _request_id => Str


=cut


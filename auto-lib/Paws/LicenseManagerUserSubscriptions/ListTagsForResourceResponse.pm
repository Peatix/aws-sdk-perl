
package Paws::LicenseManagerUserSubscriptions::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::LicenseManagerUserSubscriptions::Tags>

The tags for the specified resource.


=head2 _request_id => Str


=cut


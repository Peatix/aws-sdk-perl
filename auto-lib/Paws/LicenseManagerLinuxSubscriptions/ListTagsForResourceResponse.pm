
package Paws::LicenseManagerLinuxSubscriptions::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::LicenseManagerLinuxSubscriptions::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::LicenseManagerLinuxSubscriptions::Tags>

The metadata tags for the requested resource.


=head2 _request_id => Str


=cut


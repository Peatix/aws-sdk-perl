
package Paws::WAFV2::GenerateMobileSdkReleaseUrlResponse;
  use Moose;
  has Url => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GenerateMobileSdkReleaseUrlResponse

=head1 ATTRIBUTES


=head2 Url => Str

The presigned download URL for the specified SDK release.


=head2 _request_id => Str


=cut

1;
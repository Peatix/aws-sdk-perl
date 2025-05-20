
package Paws::WAFV2::GetMobileSdkReleaseResponse;
  use Moose;
  has MobileSdkRelease => (is => 'ro', isa => 'Paws::WAFV2::MobileSdkRelease');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetMobileSdkReleaseResponse

=head1 ATTRIBUTES


=head2 MobileSdkRelease => L<Paws::WAFV2::MobileSdkRelease>

Information for a specified SDK release, including release notes and
tags.


=head2 _request_id => Str


=cut

1;
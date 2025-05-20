
package Paws::EC2::EnableImageBlockPublicAccessResult;
  use Moose;
  has ImageBlockPublicAccessState => (is => 'ro', isa => 'Str', request_name => 'imageBlockPublicAccessState', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableImageBlockPublicAccessResult

=head1 ATTRIBUTES


=head2 ImageBlockPublicAccessState => Str

Returns C<block-new-sharing> if the request succeeds; otherwise, it
returns an error.

Valid values are: C<"block-new-sharing">
=head2 _request_id => Str


=cut


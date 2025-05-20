
package Paws::SocialMessaging::DeleteWhatsAppMessageMediaOutput;
  use Moose;
  has Success => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'success');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::DeleteWhatsAppMessageMediaOutput

=head1 ATTRIBUTES


=head2 Success => Bool

Success indicator for deleting the media file.


=head2 _request_id => Str


=cut


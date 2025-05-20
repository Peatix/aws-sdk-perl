
package Paws::EC2::DisableAllowedImagesSettingsResult;
  use Moose;
  has AllowedImagesSettingsState => (is => 'ro', isa => 'Str', request_name => 'allowedImagesSettingsState', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableAllowedImagesSettingsResult

=head1 ATTRIBUTES


=head2 AllowedImagesSettingsState => Str

Returns C<disabled> if the request succeeds; otherwise, it returns an
error.

Valid values are: C<"disabled">
=head2 _request_id => Str


=cut


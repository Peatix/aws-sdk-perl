
package Paws::EC2::EnableAllowedImagesSettingsResult;
  use Moose;
  has AllowedImagesSettingsState => (is => 'ro', isa => 'Str', request_name => 'allowedImagesSettingsState', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableAllowedImagesSettingsResult

=head1 ATTRIBUTES


=head2 AllowedImagesSettingsState => Str

Returns C<enabled> or C<audit-mode> if the request succeeds; otherwise,
it returns an error.

Valid values are: C<"enabled">, C<"audit-mode">
=head2 _request_id => Str


=cut


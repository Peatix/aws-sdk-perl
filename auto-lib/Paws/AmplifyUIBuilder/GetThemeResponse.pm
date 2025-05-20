
package Paws::AmplifyUIBuilder::GetThemeResponse;
  use Moose;
  has Theme => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::Theme', traits => ['NameInRequest'], request_name => 'theme');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Theme');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::GetThemeResponse

=head1 ATTRIBUTES


=head2 Theme => L<Paws::AmplifyUIBuilder::Theme>

Represents the configuration settings for the theme.


=head2 _request_id => Str


=cut


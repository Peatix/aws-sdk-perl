
package Paws::AmplifyUIBuilder::UpdateThemeResponse;
  use Moose;
  has Entity => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::Theme', traits => ['NameInRequest'], request_name => 'entity');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Entity');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::UpdateThemeResponse

=head1 ATTRIBUTES


=head2 Entity => L<Paws::AmplifyUIBuilder::Theme>

Describes the configuration of the updated theme.


=head2 _request_id => Str


=cut


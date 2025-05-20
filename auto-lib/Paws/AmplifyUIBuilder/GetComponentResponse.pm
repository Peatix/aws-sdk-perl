
package Paws::AmplifyUIBuilder::GetComponentResponse;
  use Moose;
  has Component => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::Component', traits => ['NameInRequest'], request_name => 'component');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Component');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::GetComponentResponse

=head1 ATTRIBUTES


=head2 Component => L<Paws::AmplifyUIBuilder::Component>

Represents the configuration settings for the component.


=head2 _request_id => Str


=cut


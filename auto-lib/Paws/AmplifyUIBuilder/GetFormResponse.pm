
package Paws::AmplifyUIBuilder::GetFormResponse;
  use Moose;
  has Form => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::Form', traits => ['NameInRequest'], request_name => 'form');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Form');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::GetFormResponse

=head1 ATTRIBUTES


=head2 Form => L<Paws::AmplifyUIBuilder::Form>

Represents the configuration settings for the form.


=head2 _request_id => Str


=cut


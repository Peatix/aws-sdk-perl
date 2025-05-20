
package Paws::AmplifyUIBuilder::StartCodegenJobResponse;
  use Moose;
  has Entity => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::CodegenJob', traits => ['NameInRequest'], request_name => 'entity');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Entity');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::StartCodegenJobResponse

=head1 ATTRIBUTES


=head2 Entity => L<Paws::AmplifyUIBuilder::CodegenJob>

The code generation job for a UI component that is associated with an
Amplify app.


=head2 _request_id => Str


=cut


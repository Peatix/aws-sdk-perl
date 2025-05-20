
package Paws::AmplifyUIBuilder::GetCodegenJobResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::CodegenJob', traits => ['NameInRequest'], request_name => 'job');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Job');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::GetCodegenJobResponse

=head1 ATTRIBUTES


=head2 Job => L<Paws::AmplifyUIBuilder::CodegenJob>

The configuration settings for the code generation job.


=head2 _request_id => Str


=cut


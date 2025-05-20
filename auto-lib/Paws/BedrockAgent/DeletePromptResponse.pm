
package Paws::BedrockAgent::DeletePromptResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::DeletePromptResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier of the prompt that was deleted.


=head2 Version => Str

The version of the prompt that was deleted.


=head2 _request_id => Str


=cut


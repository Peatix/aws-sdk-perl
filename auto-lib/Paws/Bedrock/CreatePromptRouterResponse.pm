
package Paws::Bedrock::CreatePromptRouterResponse;
  use Moose;
  has PromptRouterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'promptRouterArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreatePromptRouterResponse

=head1 ATTRIBUTES


=head2 PromptRouterArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the prompt
router.


=head2 _request_id => Str


=cut



package Paws::Connect::DescribePromptResponse;
  use Moose;
  has Prompt => (is => 'ro', isa => 'Paws::Connect::Prompt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribePromptResponse

=head1 ATTRIBUTES


=head2 Prompt => L<Paws::Connect::Prompt>

Information about the prompt.


=head2 _request_id => Str


=cut



package Paws::Bedrock::GetFoundationModelResponse;
  use Moose;
  has ModelDetails => (is => 'ro', isa => 'Paws::Bedrock::FoundationModelDetails', traits => ['NameInRequest'], request_name => 'modelDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetFoundationModelResponse

=head1 ATTRIBUTES


=head2 ModelDetails => L<Paws::Bedrock::FoundationModelDetails>

Information about the foundation model.


=head2 _request_id => Str


=cut



package Paws::QBusiness::CreateRetrieverResponse;
  use Moose;
  has RetrieverArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'retrieverArn');
  has RetrieverId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'retrieverId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateRetrieverResponse

=head1 ATTRIBUTES


=head2 RetrieverArn => Str

The Amazon Resource Name (ARN) of an IAM role associated with a
retriever.


=head2 RetrieverId => Str

The identifier of the retriever you are using.


=head2 _request_id => Str


=cut


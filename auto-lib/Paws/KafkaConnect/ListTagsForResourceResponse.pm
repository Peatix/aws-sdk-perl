
package Paws::KafkaConnect::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::KafkaConnect::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::KafkaConnect::Tags>

Lists the tags attached to the specified resource in the corresponding
request.


=head2 _request_id => Str


=cut


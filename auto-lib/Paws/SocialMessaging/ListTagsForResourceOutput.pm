
package Paws::SocialMessaging::ListTagsForResourceOutput;
  use Moose;
  has StatusCode => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'statusCode');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SocialMessaging::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 StatusCode => Int

The status code of the response.


=head2 Tags => ArrayRef[L<Paws::SocialMessaging::Tag>]

The tags for the resource.


=head2 _request_id => Str


=cut


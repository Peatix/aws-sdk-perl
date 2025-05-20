
package Paws::SocialMessaging::TagResourceOutput;
  use Moose;
  has StatusCode => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'statusCode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::TagResourceOutput

=head1 ATTRIBUTES


=head2 StatusCode => Int

The status code of the tag resource operation.


=head2 _request_id => Str


=cut



package Paws::MailManager::ListIngressPointsResponse;
  use Moose;
  has IngressPoints => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::IngressPoint]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListIngressPointsResponse

=head1 ATTRIBUTES


=head2 IngressPoints => ArrayRef[L<Paws::MailManager::IngressPoint>]

The list of ingress endpoints.


=head2 NextToken => Str

If NextToken is returned, there are more results available. The value
of NextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

1;
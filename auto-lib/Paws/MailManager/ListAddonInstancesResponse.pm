
package Paws::MailManager::ListAddonInstancesResponse;
  use Moose;
  has AddonInstances => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::AddonInstance]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListAddonInstancesResponse

=head1 ATTRIBUTES


=head2 AddonInstances => ArrayRef[L<Paws::MailManager::AddonInstance>]

The list of ingress endpoints.


=head2 NextToken => Str

If NextToken is returned, there are more results available. The value
of NextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page.


=head2 _request_id => Str


=cut

1;
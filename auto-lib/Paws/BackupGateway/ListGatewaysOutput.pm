
package Paws::BackupGateway::ListGatewaysOutput;
  use Moose;
  has Gateways => (is => 'ro', isa => 'ArrayRef[Paws::BackupGateway::Gateway]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::ListGatewaysOutput

=head1 ATTRIBUTES


=head2 Gateways => ArrayRef[L<Paws::BackupGateway::Gateway>]

A list of your gateways.


=head2 NextToken => Str

The next item following a partial list of returned resources. For
example, if a request is made to return C<maxResults> number of
resources, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.


=head2 _request_id => Str


=cut

1;
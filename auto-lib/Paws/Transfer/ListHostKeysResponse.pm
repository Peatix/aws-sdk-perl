
package Paws::Transfer::ListHostKeysResponse;
  use Moose;
  has HostKeys => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ListedHostKey]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListHostKeysResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostKeys => ArrayRef[L<Paws::Transfer::ListedHostKey>]

Returns an array, where each item contains the details of a host key.


=head2 NextToken => Str

Returns a token that you can use to call C<ListHostKeys> again and
receive additional results, if there are any.


=head2 B<REQUIRED> ServerId => Str

Returns the server identifier that contains the listed host keys.


=head2 _request_id => Str


=cut

1;
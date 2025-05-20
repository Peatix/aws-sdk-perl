
package Paws::BackupGateway::ListVirtualMachinesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VirtualMachines => (is => 'ro', isa => 'ArrayRef[Paws::BackupGateway::VirtualMachine]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::ListVirtualMachinesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The next item following a partial list of returned resources. For
example, if a request is made to return C<maxResults> number of
resources, C<NextToken> allows you to return more items in your list
starting at the location pointed to by the next token.


=head2 VirtualMachines => ArrayRef[L<Paws::BackupGateway::VirtualMachine>]

A list of your C<VirtualMachine> objects, ordered by their Amazon
Resource Names (ARNs).


=head2 _request_id => Str


=cut

1;

package Paws::RedshiftServerless::ListManagedWorkgroupsResponse;
  use Moose;
  has ManagedWorkgroups => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::ManagedWorkgroupListItem]', traits => ['NameInRequest'], request_name => 'managedWorkgroups' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListManagedWorkgroupsResponse

=head1 ATTRIBUTES


=head2 ManagedWorkgroups => ArrayRef[L<Paws::RedshiftServerless::ManagedWorkgroupListItem>]

The returned array of managed workgroups.


=head2 NextToken => Str

If nextToken is returned, there are more results available. The value
of nextToken is a unique pagination token for each page. To retrieve
the next page, make the call again using the returned token.


=head2 _request_id => Str


=cut

1;
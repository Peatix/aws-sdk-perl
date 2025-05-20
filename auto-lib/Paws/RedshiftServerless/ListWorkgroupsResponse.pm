
package Paws::RedshiftServerless::ListWorkgroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Workgroups => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::Workgroup]', traits => ['NameInRequest'], request_name => 'workgroups' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListWorkgroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. To
retrieve the next page, make the call again using the returned token.


=head2 B<REQUIRED> Workgroups => ArrayRef[L<Paws::RedshiftServerless::Workgroup>]

The returned array of workgroups.


=head2 _request_id => Str


=cut

1;
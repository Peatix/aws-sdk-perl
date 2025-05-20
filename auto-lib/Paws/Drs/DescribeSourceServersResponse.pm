
package Paws::Drs::DescribeSourceServersResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::Drs::SourceServer]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::DescribeSourceServersResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::Drs::SourceServer>]

An array of Source Servers.


=head2 NextToken => Str

The token of the next Source Server to retrieve.


=head2 _request_id => Str


=cut


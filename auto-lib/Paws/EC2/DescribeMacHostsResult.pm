
package Paws::EC2::DescribeMacHostsResult;
  use Moose;
  has MacHosts => (is => 'ro', isa => 'ArrayRef[Paws::EC2::MacHost]', request_name => 'macHostSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeMacHostsResult

=head1 ATTRIBUTES


=head2 MacHosts => ArrayRef[L<Paws::EC2::MacHost>]

Information about the EC2 Mac Dedicated Hosts.


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 _request_id => Str


=cut


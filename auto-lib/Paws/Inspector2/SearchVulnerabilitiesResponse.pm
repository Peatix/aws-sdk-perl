
package Paws::Inspector2::SearchVulnerabilitiesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Vulnerabilities => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::Vulnerability]', traits => ['NameInRequest'], request_name => 'vulnerabilities', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::SearchVulnerabilitiesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 B<REQUIRED> Vulnerabilities => ArrayRef[L<Paws::Inspector2::Vulnerability>]

Details about the listed vulnerability.


=head2 _request_id => Str


=cut


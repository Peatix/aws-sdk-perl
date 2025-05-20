
package Paws::Inspector2::ListCisScansResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Scans => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::CisScan]', traits => ['NameInRequest'], request_name => 'scans');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListCisScansResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token from a previous request that's used to retrieve
the next page of results.


=head2 Scans => ArrayRef[L<Paws::Inspector2::CisScan>]

The CIS scans.


=head2 _request_id => Str


=cut


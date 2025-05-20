
package Paws::Tnb::ListSolFunctionPackagesOutput;
  use Moose;
  has FunctionPackages => (is => 'ro', isa => 'ArrayRef[Paws::Tnb::ListSolFunctionPackageInfo]', traits => ['NameInRequest'], request_name => 'functionPackages', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::ListSolFunctionPackagesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionPackages => ArrayRef[L<Paws::Tnb::ListSolFunctionPackageInfo>]

Function packages. A function package is a .zip file in CSAR (Cloud
Service Archive) format that contains a network function (an ETSI
standard telecommunication application) and function package descriptor
that uses the TOSCA standard to describe how the network functions
should run on your network.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


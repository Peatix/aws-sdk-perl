
package Paws::Tnb::ListSolNetworkPackagesOutput;
  use Moose;
  has NetworkPackages => (is => 'ro', isa => 'ArrayRef[Paws::Tnb::ListSolNetworkPackageInfo]', traits => ['NameInRequest'], request_name => 'networkPackages', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::ListSolNetworkPackagesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkPackages => ArrayRef[L<Paws::Tnb::ListSolNetworkPackageInfo>]

Network packages. A network package is a .zip file in CSAR (Cloud
Service Archive) format defines the function packages you want to
deploy and the Amazon Web Services infrastructure you want to deploy
them on.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut


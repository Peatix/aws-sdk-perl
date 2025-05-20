
package Paws::ManagedBlockchainQuery::ListAssetContractsOutput;
  use Moose;
  has Contracts => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchainQuery::AssetContract]', traits => ['NameInRequest'], request_name => 'contracts', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchainQuery::ListAssetContractsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Contracts => ArrayRef[L<Paws::ManagedBlockchainQuery::AssetContract>]

An array of contract objects that contain the properties for each
contract.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut


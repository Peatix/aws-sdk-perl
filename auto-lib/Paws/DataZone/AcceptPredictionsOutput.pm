
package Paws::DataZone::AcceptPredictionsOutput;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetId', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has Revision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revision', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::AcceptPredictionsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the asset.


=head2 B<REQUIRED> DomainId => Str

The identifier of the Amazon DataZone domain.


=head2 B<REQUIRED> Revision => Str

The revision that is to be made to the asset.


=head2 _request_id => Str


=cut


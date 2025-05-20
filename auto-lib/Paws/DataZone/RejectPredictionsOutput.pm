
package Paws::DataZone::RejectPredictionsOutput;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetId', required => 1);
  has AssetRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assetRevision', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::RejectPredictionsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssetId => Str

The ID of the asset.


=head2 B<REQUIRED> AssetRevision => Str

The revision that is to be made to the asset.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain.


=head2 _request_id => Str


=cut


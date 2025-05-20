
package Paws::SupplyChain::DeleteDataLakeDatasetResponse;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::DeleteDataLakeDatasetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The AWS Supply Chain instance identifier.


=head2 B<REQUIRED> Name => Str

The name of deleted dataset.


=head2 B<REQUIRED> Namespace => Str

The namespace of deleted dataset.


=head2 _request_id => Str


=cut


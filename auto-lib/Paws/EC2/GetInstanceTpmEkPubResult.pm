
package Paws::EC2::GetInstanceTpmEkPubResult;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest',]);
  has KeyFormat => (is => 'ro', isa => 'Str', request_name => 'keyFormat', traits => ['NameInRequest',]);
  has KeyType => (is => 'ro', isa => 'Str', request_name => 'keyType', traits => ['NameInRequest',]);
  has KeyValue => (is => 'ro', isa => 'Str', request_name => 'keyValue', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetInstanceTpmEkPubResult

=head1 ATTRIBUTES


=head2 InstanceId => Str

The ID of the instance.


=head2 KeyFormat => Str

The public endorsement key format.

Valid values are: C<"der">, C<"tpmt">
=head2 KeyType => Str

The public endorsement key type.

Valid values are: C<"rsa-2048">, C<"ecc-sec-p384">
=head2 KeyValue => Str

The public endorsement key material.


=head2 _request_id => Str


=cut



package Paws::EC2::GetInstanceUefiDataResult;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest',]);
  has UefiData => (is => 'ro', isa => 'Str', request_name => 'uefiData', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetInstanceUefiDataResult

=head1 ATTRIBUTES


=head2 InstanceId => Str

The ID of the instance from which to retrieve the UEFI data.


=head2 UefiData => Str

Base64 representation of the non-volatile UEFI variable store.


=head2 _request_id => Str


=cut


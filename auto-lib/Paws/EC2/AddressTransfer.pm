package Paws::EC2::AddressTransfer;
  use Moose;
  has AddressTransferStatus => (is => 'ro', isa => 'Str', request_name => 'addressTransferStatus', traits => ['NameInRequest']);
  has AllocationId => (is => 'ro', isa => 'Str', request_name => 'allocationId', traits => ['NameInRequest']);
  has PublicIp => (is => 'ro', isa => 'Str', request_name => 'publicIp', traits => ['NameInRequest']);
  has TransferAccountId => (is => 'ro', isa => 'Str', request_name => 'transferAccountId', traits => ['NameInRequest']);
  has TransferOfferAcceptedTimestamp => (is => 'ro', isa => 'Str', request_name => 'transferOfferAcceptedTimestamp', traits => ['NameInRequest']);
  has TransferOfferExpirationTimestamp => (is => 'ro', isa => 'Str', request_name => 'transferOfferExpirationTimestamp', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AddressTransfer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AddressTransfer object:

  $service_obj->Method(Att1 => { AddressTransferStatus => $value, ..., TransferOfferExpirationTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AddressTransfer object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressTransferStatus

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AddressTransferStatus => Str

The Elastic IP address transfer status.


=head2 AllocationId => Str

The allocation ID of an Elastic IP address.


=head2 PublicIp => Str

The Elastic IP address being transferred.


=head2 TransferAccountId => Str

The ID of the account that you want to transfer the Elastic IP address
to.


=head2 TransferOfferAcceptedTimestamp => Str

The timestamp when the Elastic IP address transfer was accepted.


=head2 TransferOfferExpirationTimestamp => Str

The timestamp when the Elastic IP address transfer expired. When the
source account starts the transfer, the transfer account has seven
hours to allocate the Elastic IP address to complete the transfer, or
the Elastic IP address will return to its original owner.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

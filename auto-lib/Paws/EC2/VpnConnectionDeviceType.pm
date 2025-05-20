package Paws::EC2::VpnConnectionDeviceType;
  use Moose;
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has Software => (is => 'ro', isa => 'Str', request_name => 'software', traits => ['NameInRequest']);
  has Vendor => (is => 'ro', isa => 'Str', request_name => 'vendor', traits => ['NameInRequest']);
  has VpnConnectionDeviceTypeId => (is => 'ro', isa => 'Str', request_name => 'vpnConnectionDeviceTypeId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpnConnectionDeviceType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpnConnectionDeviceType object:

  $service_obj->Method(Att1 => { Platform => $value, ..., VpnConnectionDeviceTypeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpnConnectionDeviceType object:

  $result = $service_obj->Method(...);
  $result->Att1->Platform

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Platform => Str

Customer gateway device platform.


=head2 Software => Str

Customer gateway device software version.


=head2 Vendor => Str

Customer gateway device vendor.


=head2 VpnConnectionDeviceTypeId => Str

Customer gateway device identifier.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

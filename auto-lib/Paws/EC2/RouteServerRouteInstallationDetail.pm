package Paws::EC2::RouteServerRouteInstallationDetail;
  use Moose;
  has RouteInstallationStatus => (is => 'ro', isa => 'Str', request_name => 'routeInstallationStatus', traits => ['NameInRequest']);
  has RouteInstallationStatusReason => (is => 'ro', isa => 'Str', request_name => 'routeInstallationStatusReason', traits => ['NameInRequest']);
  has RouteTableId => (is => 'ro', isa => 'Str', request_name => 'routeTableId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RouteServerRouteInstallationDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RouteServerRouteInstallationDetail object:

  $service_obj->Method(Att1 => { RouteInstallationStatus => $value, ..., RouteTableId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RouteServerRouteInstallationDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->RouteInstallationStatus

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 RouteInstallationStatus => Str

The current installation status of the route in the route table.


=head2 RouteInstallationStatusReason => Str

The reason for the current installation status of the route.


=head2 RouteTableId => Str

The ID of the route table where the route is being installed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

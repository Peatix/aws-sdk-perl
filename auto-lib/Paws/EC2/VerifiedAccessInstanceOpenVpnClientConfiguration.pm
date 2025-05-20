package Paws::EC2::VerifiedAccessInstanceOpenVpnClientConfiguration;
  use Moose;
  has Config => (is => 'ro', isa => 'Str', request_name => 'config', traits => ['NameInRequest']);
  has Routes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VerifiedAccessInstanceOpenVpnClientConfigurationRoute]', request_name => 'routeSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VerifiedAccessInstanceOpenVpnClientConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VerifiedAccessInstanceOpenVpnClientConfiguration object:

  $service_obj->Method(Att1 => { Config => $value, ..., Routes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VerifiedAccessInstanceOpenVpnClientConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Config

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Config => Str

The base64-encoded Open VPN client configuration.


=head2 Routes => ArrayRef[L<Paws::EC2::VerifiedAccessInstanceOpenVpnClientConfigurationRoute>]

The routes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

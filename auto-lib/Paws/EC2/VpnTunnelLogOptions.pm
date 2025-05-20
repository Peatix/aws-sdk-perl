package Paws::EC2::VpnTunnelLogOptions;
  use Moose;
  has CloudWatchLogOptions => (is => 'ro', isa => 'Paws::EC2::CloudWatchLogOptions', request_name => 'cloudWatchLogOptions', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpnTunnelLogOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpnTunnelLogOptions object:

  $service_obj->Method(Att1 => { CloudWatchLogOptions => $value, ..., CloudWatchLogOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpnTunnelLogOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogOptions

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CloudWatchLogOptions => L<Paws::EC2::CloudWatchLogOptions>

Options for sending VPN tunnel logs to CloudWatch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

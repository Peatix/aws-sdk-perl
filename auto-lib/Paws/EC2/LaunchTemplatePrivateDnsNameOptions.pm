package Paws::EC2::LaunchTemplatePrivateDnsNameOptions;
  use Moose;
  has EnableResourceNameDnsAAAARecord => (is => 'ro', isa => 'Bool', request_name => 'enableResourceNameDnsAAAARecord', traits => ['NameInRequest']);
  has EnableResourceNameDnsARecord => (is => 'ro', isa => 'Bool', request_name => 'enableResourceNameDnsARecord', traits => ['NameInRequest']);
  has HostnameType => (is => 'ro', isa => 'Str', request_name => 'hostnameType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplatePrivateDnsNameOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplatePrivateDnsNameOptions object:

  $service_obj->Method(Att1 => { EnableResourceNameDnsAAAARecord => $value, ..., HostnameType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplatePrivateDnsNameOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->EnableResourceNameDnsAAAARecord

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EnableResourceNameDnsAAAARecord => Bool

Indicates whether to respond to DNS queries for instance hostnames with
DNS AAAA records.


=head2 EnableResourceNameDnsARecord => Bool

Indicates whether to respond to DNS queries for instance hostnames with
DNS A records.


=head2 HostnameType => Str

The type of hostname to assign to an instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

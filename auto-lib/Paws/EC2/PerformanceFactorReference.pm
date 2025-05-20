package Paws::EC2::PerformanceFactorReference;
  use Moose;
  has InstanceFamily => (is => 'ro', isa => 'Str', request_name => 'instanceFamily', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PerformanceFactorReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PerformanceFactorReference object:

  $service_obj->Method(Att1 => { InstanceFamily => $value, ..., InstanceFamily => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PerformanceFactorReference object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceFamily

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 InstanceFamily => Str

The instance family to use as a baseline reference.

Ensure that you specify the correct value for the instance family. The
instance family is everything before the period (C<.>) in the instance
type name. For example, in the instance type C<c6i.large>, the instance
family is C<c6i>, not C<c6>. For more information, see Amazon EC2
instance type naming conventions
(https://docs.aws.amazon.com/ec2/latest/instancetypes/instance-type-names.html)
in I<Amazon EC2 Instance Types>.

The following instance families are I<not supported> for performance
protection:

=over

=item *

C<c1>

=item *

C<g3> | C<g3s>

=item *

C<hpc7g>

=item *

C<m1> | C<m2>

=item *

C<mac1> | C<mac2> | C<mac2-m1ultra> | C<mac2-m2> | C<mac2-m2pro>

=item *

C<p3dn> | C<p4d> | C<p5>

=item *

C<t1>

=item *

C<u-12tb1> | C<u-18tb1> | C<u-24tb1> | C<u-3tb1> | C<u-6tb1> |
C<u-9tb1> | C<u7i-12tb> | C<u7in-16tb> | C<u7in-24tb> | C<u7in-32tb>

=back

If you enable performance protection by specifying a supported instance
family, the returned instance types will exclude the above unsupported
instance families.

If you specify an unsupported instance family as a value for baseline
performance, the API returns an empty response for
GetInstanceTypesFromInstanceRequirements
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceTypesFromInstanceRequirements)
and an exception for CreateFleet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet),
RequestSpotFleet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RequestSpotFleet),
ModifyFleet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyFleet),
and ModifySpotFleetRequest
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifySpotFleetRequest).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

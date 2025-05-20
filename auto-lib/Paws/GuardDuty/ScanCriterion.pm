package Paws::GuardDuty::ScanCriterion;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has EC2_INSTANCE_TAG => (is => 'ro', isa => 'Paws::GuardDuty::ScanCondition');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ScanCriterion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::ScanCriterion object:

  $service_obj->Method(Att1 => { EC2_INSTANCE_TAG => $value, ..., EC2_INSTANCE_TAG => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::ScanCriterion object:

  $result = $service_obj->Method(...);
  $result->Att1->EC2_INSTANCE_TAG

=head1 DESCRIPTION

Represents a map of resource properties that match specified conditions
and values when triggering malware scans.

=head1 ATTRIBUTES


=head2 EC2_INSTANCE_TAG => L<Paws::GuardDuty::ScanCondition>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


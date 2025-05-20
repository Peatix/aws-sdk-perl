package Paws::Detective::DatasourcePackageIngestStates;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has ASFF_SECURITYHUB_FINDING => (is => 'ro', isa => 'Str');
  has DETECTIVE_CORE => (is => 'ro', isa => 'Str');
  has EKS_AUDIT => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::DatasourcePackageIngestStates

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Detective::DatasourcePackageIngestStates object:

  $service_obj->Method(Att1 => { ASFF_SECURITYHUB_FINDING => $value, ..., EKS_AUDIT => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Detective::DatasourcePackageIngestStates object:

  $result = $service_obj->Method(...);
  $result->Att1->ASFF_SECURITYHUB_FINDING

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ASFF_SECURITYHUB_FINDING => Str


=head2 DETECTIVE_CORE => Str


=head2 EKS_AUDIT => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


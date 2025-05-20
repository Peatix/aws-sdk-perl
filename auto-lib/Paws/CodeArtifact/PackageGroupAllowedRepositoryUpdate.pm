package Paws::CodeArtifact::PackageGroupAllowedRepositoryUpdate;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has ADDED => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has REMOVED => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::PackageGroupAllowedRepositoryUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeArtifact::PackageGroupAllowedRepositoryUpdate object:

  $service_obj->Method(Att1 => { ADDED => $value, ..., REMOVED => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeArtifact::PackageGroupAllowedRepositoryUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ADDED

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ADDED => ArrayRef[Str|Undef]


=head2 REMOVED => ArrayRef[Str|Undef]



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


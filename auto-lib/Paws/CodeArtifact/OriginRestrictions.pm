package Paws::CodeArtifact::OriginRestrictions;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has EXTERNAL_UPSTREAM => (is => 'ro', isa => 'Str');
  has INTERNAL_UPSTREAM => (is => 'ro', isa => 'Str');
  has PUBLISH => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::OriginRestrictions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeArtifact::OriginRestrictions object:

  $service_obj->Method(Att1 => { EXTERNAL_UPSTREAM => $value, ..., PUBLISH => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeArtifact::OriginRestrictions object:

  $result = $service_obj->Method(...);
  $result->Att1->EXTERNAL_UPSTREAM

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EXTERNAL_UPSTREAM => Str


=head2 INTERNAL_UPSTREAM => Str


=head2 PUBLISH => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


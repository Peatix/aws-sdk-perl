package Paws::SageMaker::AutoMLInferenceContainerDefinitions;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has CPU => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLContainerDefinition]');
  has GPU => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AutoMLContainerDefinition]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AutoMLInferenceContainerDefinitions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AutoMLInferenceContainerDefinitions object:

  $service_obj->Method(Att1 => { CPU => $value, ..., GPU => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AutoMLInferenceContainerDefinitions object:

  $result = $service_obj->Method(...);
  $result->Att1->CPU

=head1 DESCRIPTION

The mapping of all supported processing unit (CPU, GPU, etc...) to
inference container definitions for the candidate. This field is
populated for the V2 API only (for example, for jobs created by calling
C<CreateAutoMLJobV2>).

=head1 ATTRIBUTES


=head2 CPU => ArrayRef[L<Paws::SageMaker::AutoMLContainerDefinition>]


=head2 GPU => ArrayRef[L<Paws::SageMaker::AutoMLContainerDefinition>]



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


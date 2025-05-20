package Paws::LexModelsV2::PromptAttemptsSpecificationMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has Initial => (is => 'ro', isa => 'Paws::LexModelsV2::PromptAttemptSpecification');
  has Retry1 => (is => 'ro', isa => 'Paws::LexModelsV2::PromptAttemptSpecification');
  has Retry2 => (is => 'ro', isa => 'Paws::LexModelsV2::PromptAttemptSpecification');
  has Retry3 => (is => 'ro', isa => 'Paws::LexModelsV2::PromptAttemptSpecification');
  has Retry4 => (is => 'ro', isa => 'Paws::LexModelsV2::PromptAttemptSpecification');
  has Retry5 => (is => 'ro', isa => 'Paws::LexModelsV2::PromptAttemptSpecification');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::PromptAttemptsSpecificationMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::PromptAttemptsSpecificationMap object:

  $service_obj->Method(Att1 => { Initial => $value, ..., Retry5 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::PromptAttemptsSpecificationMap object:

  $result = $service_obj->Method(...);
  $result->Att1->Initial

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Initial => L<Paws::LexModelsV2::PromptAttemptSpecification>


=head2 Retry1 => L<Paws::LexModelsV2::PromptAttemptSpecification>


=head2 Retry2 => L<Paws::LexModelsV2::PromptAttemptSpecification>


=head2 Retry3 => L<Paws::LexModelsV2::PromptAttemptSpecification>


=head2 Retry4 => L<Paws::LexModelsV2::PromptAttemptSpecification>


=head2 Retry5 => L<Paws::LexModelsV2::PromptAttemptSpecification>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


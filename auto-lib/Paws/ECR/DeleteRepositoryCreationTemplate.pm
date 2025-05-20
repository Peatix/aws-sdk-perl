
package Paws::ECR::DeleteRepositoryCreationTemplate;
  use Moose;
  has Prefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'prefix' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRepositoryCreationTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::DeleteRepositoryCreationTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DeleteRepositoryCreationTemplate - Arguments for method DeleteRepositoryCreationTemplate on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRepositoryCreationTemplate on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method DeleteRepositoryCreationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRepositoryCreationTemplate.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $DeleteRepositoryCreationTemplateResponse =
      $api . ecr->DeleteRepositoryCreationTemplate(
      Prefix => 'MyPrefix',

      );

    # Results:
    my $RegistryId = $DeleteRepositoryCreationTemplateResponse->RegistryId;
    my $RepositoryCreationTemplate =
      $DeleteRepositoryCreationTemplateResponse->RepositoryCreationTemplate;

    # Returns a L<Paws::ECR::DeleteRepositoryCreationTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/DeleteRepositoryCreationTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Prefix => Str

The repository namespace prefix associated with the repository creation
template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRepositoryCreationTemplate in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


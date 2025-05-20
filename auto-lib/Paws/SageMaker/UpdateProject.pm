
package Paws::SageMaker::UpdateProject;
  use Moose;
  has ProjectDescription => (is => 'ro', isa => 'Str');
  has ProjectName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceCatalogProvisioningUpdateDetails => (is => 'ro', isa => 'Paws::SageMaker::ServiceCatalogProvisioningUpdateDetails');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateProjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateProject - Arguments for method UpdateProject on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateProjectOutput = $api . sagemaker->UpdateProject(
      ProjectName        => 'MyProjectEntityName',
      ProjectDescription => 'MyEntityDescription',    # OPTIONAL
      ServiceCatalogProvisioningUpdateDetails => {
        ProvisioningArtifactId =>
          'MyServiceCatalogEntityId',    # min: 1, max: 100; OPTIONAL
        ProvisioningParameters => [
          {
            Key   => 'MyProvisioningParameterKey', # min: 1, max: 1000; OPTIONAL
            Value => 'MyProvisioningParameterValue',    # max: 4096; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ProjectArn = $UpdateProjectOutput->ProjectArn;

    # Returns a L<Paws::SageMaker::UpdateProjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateProject>

=head1 ATTRIBUTES


=head2 ProjectDescription => Str

The description for the project.



=head2 B<REQUIRED> ProjectName => Str

The name of the project.



=head2 ServiceCatalogProvisioningUpdateDetails => L<Paws::SageMaker::ServiceCatalogProvisioningUpdateDetails>

The product ID and provisioning artifact ID to provision a service
catalog. The provisioning artifact ID will default to the latest
provisioning artifact ID of the product, if you don't provide the
provisioning artifact ID. For more information, see What is Amazon Web
Services Service Catalog
(https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html).



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging Amazon Web
Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html). In
addition, the project must have tag update constraints set in order to
include this parameter in the request. For more information, see Amazon
Web Services Service Catalog Tag Update Constraints
(https://docs.aws.amazon.com/servicecatalog/latest/adminguide/constraints-resourceupdate.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


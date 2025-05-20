
package Paws::Proton::ListServicePipelineOutputs;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServicePipelineOutputs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListServicePipelineOutputsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListServicePipelineOutputs - Arguments for method ListServicePipelineOutputs on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServicePipelineOutputs on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListServicePipelineOutputs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServicePipelineOutputs.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListServicePipelineOutputsOutput = $proton->ListServicePipelineOutputs(
      ServiceName  => 'MyResourceName',
      DeploymentId => 'MyDeploymentId',      # OPTIONAL
      NextToken    => 'MyEmptyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListServicePipelineOutputsOutput->NextToken;
    my $Outputs   = $ListServicePipelineOutputsOutput->Outputs;

    # Returns a L<Paws::Proton::ListServicePipelineOutputsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListServicePipelineOutputs>

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The ID of the deployment you want the outputs for.



=head2 NextToken => Str

A token that indicates the location of the next output in the array of
outputs, after the list of outputs that was previously requested.



=head2 B<REQUIRED> ServiceName => Str

The name of the service whose pipeline's outputs you want.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServicePipelineOutputs in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


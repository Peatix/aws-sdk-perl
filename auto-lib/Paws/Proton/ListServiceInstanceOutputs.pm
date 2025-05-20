
package Paws::Proton::ListServiceInstanceOutputs;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ServiceInstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceInstanceName' , required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServiceInstanceOutputs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListServiceInstanceOutputsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListServiceInstanceOutputs - Arguments for method ListServiceInstanceOutputs on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServiceInstanceOutputs on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListServiceInstanceOutputs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServiceInstanceOutputs.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListServiceInstanceOutputsOutput = $proton->ListServiceInstanceOutputs(
      ServiceInstanceName => 'MyResourceName',
      ServiceName         => 'MyResourceName',
      DeploymentId        => 'MyDeploymentId',      # OPTIONAL
      NextToken           => 'MyEmptyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListServiceInstanceOutputsOutput->NextToken;
    my $Outputs   = $ListServiceInstanceOutputsOutput->Outputs;

    # Returns a L<Paws::Proton::ListServiceInstanceOutputsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListServiceInstanceOutputs>

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The ID of the deployment whose outputs you want.



=head2 NextToken => Str

A token that indicates the location of the next output in the array of
outputs, after the list of outputs that was previously requested.



=head2 B<REQUIRED> ServiceInstanceName => Str

The name of the service instance whose outputs you want.



=head2 B<REQUIRED> ServiceName => Str

The name of the service that C<serviceInstanceName> is associated to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServiceInstanceOutputs in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


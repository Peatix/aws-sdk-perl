
package Paws::Proton::ListDeployments;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentName' );
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentName' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ServiceInstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceInstanceName' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeployments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListDeploymentsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListDeployments - Arguments for method ListDeployments on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeployments on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListDeployments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeployments.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListDeploymentsOutput = $proton->ListDeployments(
      ComponentName       => 'MyResourceName',    # OPTIONAL
      EnvironmentName     => 'MyResourceName',    # OPTIONAL
      MaxResults          => 1,                   # OPTIONAL
      NextToken           => 'MyNextToken',       # OPTIONAL
      ServiceInstanceName => 'MyResourceName',    # OPTIONAL
      ServiceName         => 'MyResourceName',    # OPTIONAL
    );

    # Results:
    my $Deployments = $ListDeploymentsOutput->Deployments;
    my $NextToken   = $ListDeploymentsOutput->NextToken;

    # Returns a L<Paws::Proton::ListDeploymentsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListDeployments>

=head1 ATTRIBUTES


=head2 ComponentName => Str

The name of a component for result list filtering. Proton returns
deployments associated with that component.



=head2 EnvironmentName => Str

The name of an environment for result list filtering. Proton returns
deployments associated with the environment.



=head2 MaxResults => Int

The maximum number of deployments to list.



=head2 NextToken => Str

A token that indicates the location of the next deployment in the array
of deployment, after the list of deployment that was previously
requested.



=head2 ServiceInstanceName => Str

The name of a service instance for result list filtering. Proton
returns the deployments associated with the service instance.



=head2 ServiceName => Str

The name of a service for result list filtering. Proton returns
deployments associated with service instances of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeployments in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Proton::GetDeployment;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentName' );
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentName' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has ServiceInstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceInstanceName' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::GetDeploymentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetDeployment - Arguments for method GetDeployment on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeployment on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method GetDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeployment.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $GetDeploymentOutput = $proton->GetDeployment(
      Id                  => 'MyDeploymentId',
      ComponentName       => 'MyResourceName',    # OPTIONAL
      EnvironmentName     => 'MyResourceName',    # OPTIONAL
      ServiceInstanceName => 'MyResourceName',    # OPTIONAL
      ServiceName         => 'MyResourceName',    # OPTIONAL
    );

    # Results:
    my $Deployment = $GetDeploymentOutput->Deployment;

    # Returns a L<Paws::Proton::GetDeploymentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/GetDeployment>

=head1 ATTRIBUTES


=head2 ComponentName => Str

The name of a component that you want to get the detailed data for.



=head2 EnvironmentName => Str

The name of a environment that you want to get the detailed data for.



=head2 B<REQUIRED> Id => Str

The ID of the deployment that you want to get the detailed data for.



=head2 ServiceInstanceName => Str

The name of the service instance associated with the given deployment
ID. C<serviceName> must be specified to identify the service instance.



=head2 ServiceName => Str

The name of the service associated with the given deployment ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeployment in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


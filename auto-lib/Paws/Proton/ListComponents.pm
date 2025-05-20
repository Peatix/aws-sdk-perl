
package Paws::Proton::ListComponents;
  use Moose;
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentName' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ServiceInstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceInstanceName' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComponents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListComponentsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListComponents - Arguments for method ListComponents on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComponents on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListComponents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComponents.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListComponentsOutput = $proton->ListComponents(
      EnvironmentName     => 'MyResourceName',    # OPTIONAL
      MaxResults          => 1,                   # OPTIONAL
      NextToken           => 'MyNextToken',       # OPTIONAL
      ServiceInstanceName => 'MyResourceName',    # OPTIONAL
      ServiceName         => 'MyResourceName',    # OPTIONAL
    );

    # Results:
    my $Components = $ListComponentsOutput->Components;
    my $NextToken  = $ListComponentsOutput->NextToken;

    # Returns a L<Paws::Proton::ListComponentsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListComponents>

=head1 ATTRIBUTES


=head2 EnvironmentName => Str

The name of an environment for result list filtering. Proton returns
components associated with the environment or attached to service
instances running in it.



=head2 MaxResults => Int

The maximum number of components to list.



=head2 NextToken => Str

A token that indicates the location of the next component in the array
of components, after the list of components that was previously
requested.



=head2 ServiceInstanceName => Str

The name of a service instance for result list filtering. Proton
returns the component attached to the service instance, if any.



=head2 ServiceName => Str

The name of a service for result list filtering. Proton returns
components attached to service instances of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComponents in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


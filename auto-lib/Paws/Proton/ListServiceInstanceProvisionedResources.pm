
package Paws::Proton::ListServiceInstanceProvisionedResources;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ServiceInstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceInstanceName' , required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServiceInstanceProvisionedResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListServiceInstanceProvisionedResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListServiceInstanceProvisionedResources - Arguments for method ListServiceInstanceProvisionedResources on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServiceInstanceProvisionedResources on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListServiceInstanceProvisionedResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServiceInstanceProvisionedResources.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListServiceInstanceProvisionedResourcesOutput =
      $proton->ListServiceInstanceProvisionedResources(
      ServiceInstanceName => 'MyResourceName',
      ServiceName         => 'MyResourceName',
      NextToken           => 'MyEmptyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListServiceInstanceProvisionedResourcesOutput->NextToken;
    my $ProvisionedResources =
      $ListServiceInstanceProvisionedResourcesOutput->ProvisionedResources;

# Returns a L<Paws::Proton::ListServiceInstanceProvisionedResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListServiceInstanceProvisionedResources>

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates the location of the next provisioned resource in
the array of provisioned resources, after the list of provisioned
resources that was previously requested.



=head2 B<REQUIRED> ServiceInstanceName => Str

The name of the service instance whose provisioned resources you want.



=head2 B<REQUIRED> ServiceName => Str

The name of the service that C<serviceInstanceName> is associated to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServiceInstanceProvisionedResources in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Proton::ListEnvironmentProvisionedResources;
  use Moose;
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentName' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnvironmentProvisionedResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListEnvironmentProvisionedResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListEnvironmentProvisionedResources - Arguments for method ListEnvironmentProvisionedResources on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnvironmentProvisionedResources on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListEnvironmentProvisionedResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnvironmentProvisionedResources.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListEnvironmentProvisionedResourcesOutput =
      $proton->ListEnvironmentProvisionedResources(
      EnvironmentName => 'MyResourceName',
      NextToken       => 'MyEmptyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListEnvironmentProvisionedResourcesOutput->NextToken;
    my $ProvisionedResources =
      $ListEnvironmentProvisionedResourcesOutput->ProvisionedResources;

  # Returns a L<Paws::Proton::ListEnvironmentProvisionedResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListEnvironmentProvisionedResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentName => Str

The environment name.



=head2 NextToken => Str

A token that indicates the location of the next environment provisioned
resource in the array of environment provisioned resources, after the
list of environment provisioned resources that was previously
requested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnvironmentProvisionedResources in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


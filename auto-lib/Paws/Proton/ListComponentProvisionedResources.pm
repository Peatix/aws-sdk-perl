
package Paws::Proton::ListComponentProvisionedResources;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentName' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComponentProvisionedResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListComponentProvisionedResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListComponentProvisionedResources - Arguments for method ListComponentProvisionedResources on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComponentProvisionedResources on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListComponentProvisionedResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComponentProvisionedResources.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListComponentProvisionedResourcesOutput =
      $proton->ListComponentProvisionedResources(
      ComponentName => 'MyResourceName',
      NextToken     => 'MyEmptyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListComponentProvisionedResourcesOutput->NextToken;
    my $ProvisionedResources =
      $ListComponentProvisionedResourcesOutput->ProvisionedResources;

    # Returns a L<Paws::Proton::ListComponentProvisionedResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListComponentProvisionedResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentName => Str

The name of the component whose provisioned resources you want.



=head2 NextToken => Str

A token that indicates the location of the next provisioned resource in
the array of provisioned resources, after the list of provisioned
resources that was previously requested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComponentProvisionedResources in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


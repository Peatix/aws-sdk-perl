
package Paws::Proton::ListComponentOutputs;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentName' , required => 1);
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComponentOutputs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::ListComponentOutputsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListComponentOutputs - Arguments for method ListComponentOutputs on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComponentOutputs on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method ListComponentOutputs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComponentOutputs.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $ListComponentOutputsOutput = $proton->ListComponentOutputs(
      ComponentName => 'MyResourceName',
      DeploymentId  => 'MyDeploymentId',      # OPTIONAL
      NextToken     => 'MyEmptyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListComponentOutputsOutput->NextToken;
    my $Outputs   = $ListComponentOutputsOutput->Outputs;

    # Returns a L<Paws::Proton::ListComponentOutputsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/ListComponentOutputs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentName => Str

The name of the component whose outputs you want.



=head2 DeploymentId => Str

The ID of the deployment whose outputs you want.



=head2 NextToken => Str

A token that indicates the location of the next output in the array of
outputs, after the list of outputs that was previously requested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComponentOutputs in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


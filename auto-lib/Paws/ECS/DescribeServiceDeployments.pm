
package Paws::ECS::DescribeServiceDeployments;
  use Moose;
  has ServiceDeploymentArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'serviceDeploymentArns' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceDeployments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DescribeServiceDeploymentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeServiceDeployments - Arguments for method DescribeServiceDeployments on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServiceDeployments on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DescribeServiceDeployments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServiceDeployments.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $DescribeServiceDeploymentsResponse = $ecs->DescribeServiceDeployments(
      ServiceDeploymentArns => [ 'MyString', ... ],

    );

    # Results:
    my $Failures = $DescribeServiceDeploymentsResponse->Failures;
    my $ServiceDeployments =
      $DescribeServiceDeploymentsResponse->ServiceDeployments;

    # Returns a L<Paws::ECS::DescribeServiceDeploymentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DescribeServiceDeployments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceDeploymentArns => ArrayRef[Str|Undef]

The ARN of the service deployment.

You can specify a maximum of 20 ARNs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServiceDeployments in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


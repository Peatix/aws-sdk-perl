
package Paws::ECS::DescribeServiceRevisions;
  use Moose;
  has ServiceRevisionArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'serviceRevisionArns' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceRevisions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DescribeServiceRevisionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeServiceRevisions - Arguments for method DescribeServiceRevisions on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServiceRevisions on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DescribeServiceRevisions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServiceRevisions.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $DescribeServiceRevisionsResponse = $ecs->DescribeServiceRevisions(
      ServiceRevisionArns => [ 'MyString', ... ],

    );

    # Results:
    my $Failures         = $DescribeServiceRevisionsResponse->Failures;
    my $ServiceRevisions = $DescribeServiceRevisionsResponse->ServiceRevisions;

    # Returns a L<Paws::ECS::DescribeServiceRevisionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DescribeServiceRevisions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceRevisionArns => ArrayRef[Str|Undef]

The ARN of the service revision.

You can specify a maximum of 20 ARNs.

You can call ListServiceDeployments
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServiceDeployments.html)
to get the ARNs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServiceRevisions in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


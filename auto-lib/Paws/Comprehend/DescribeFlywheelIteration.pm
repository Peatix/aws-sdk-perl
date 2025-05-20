
package Paws::Comprehend::DescribeFlywheelIteration;
  use Moose;
  has FlywheelArn => (is => 'ro', isa => 'Str', required => 1);
  has FlywheelIterationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFlywheelIteration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::DescribeFlywheelIterationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeFlywheelIteration - Arguments for method DescribeFlywheelIteration on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFlywheelIteration on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method DescribeFlywheelIteration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFlywheelIteration.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $DescribeFlywheelIterationResponse =
      $comprehend->DescribeFlywheelIteration(
      FlywheelArn         => 'MyComprehendFlywheelArn',
      FlywheelIterationId => 'MyFlywheelIterationId',

      );

    # Results:
    my $FlywheelIterationProperties =
      $DescribeFlywheelIterationResponse->FlywheelIterationProperties;

    # Returns a L<Paws::Comprehend::DescribeFlywheelIterationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/DescribeFlywheelIteration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlywheelArn => Str





=head2 B<REQUIRED> FlywheelIterationId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFlywheelIteration in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


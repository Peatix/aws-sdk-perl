
package Paws::Comprehend::StartFlywheelIteration;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FlywheelArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartFlywheelIteration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::StartFlywheelIterationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::StartFlywheelIteration - Arguments for method StartFlywheelIteration on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFlywheelIteration on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method StartFlywheelIteration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFlywheelIteration.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $StartFlywheelIterationResponse = $comprehend->StartFlywheelIteration(
      FlywheelArn        => 'MyComprehendFlywheelArn',
      ClientRequestToken => 'MyClientRequestTokenString',    # OPTIONAL
    );

    # Results:
    my $FlywheelArn = $StartFlywheelIterationResponse->FlywheelArn;
    my $FlywheelIterationId =
      $StartFlywheelIterationResponse->FlywheelIterationId;

    # Returns a L<Paws::Comprehend::StartFlywheelIterationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/StartFlywheelIteration>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.



=head2 B<REQUIRED> FlywheelArn => Str

The ARN of the flywheel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFlywheelIteration in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


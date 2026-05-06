
package Paws::StepFunctions::UpdateMapRun;
  use Moose;
  has MapRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mapRunArn' , required => 1);
  has MaxConcurrency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxConcurrency' );
  has ToleratedFailureCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'toleratedFailureCount' );
  has ToleratedFailurePercentage => (is => 'ro', isa => 'Num', traits => ['NameInRequest'], request_name => 'toleratedFailurePercentage' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMapRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::UpdateMapRunOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::UpdateMapRun - Arguments for method UpdateMapRun on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMapRun on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method UpdateMapRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMapRun.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $UpdateMapRunOutput = $states->UpdateMapRun(
      MapRunArn                  => 'MyLongArn',
      MaxConcurrency             => 1,             # OPTIONAL
      ToleratedFailureCount      => 1,             # OPTIONAL
      ToleratedFailurePercentage => 1.0,           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MapRunArn => Str

The Amazon Resource Name (ARN) of a Map Run.



=head2 MaxConcurrency => Int

The maximum number of child workflow executions that can be specified
to run in parallel for the Map Run at the same time.



=head2 ToleratedFailureCount => Int

The maximum number of failed items before the Map Run fails.



=head2 ToleratedFailurePercentage => Num

The maximum percentage of failed items before the Map Run fails.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMapRun in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


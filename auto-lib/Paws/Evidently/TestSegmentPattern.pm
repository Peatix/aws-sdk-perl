
package Paws::Evidently::TestSegmentPattern;
  use Moose;
  has Pattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pattern', required => 1);
  has Payload => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'payload', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestSegmentPattern');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/test-segment-pattern');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::TestSegmentPatternResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::TestSegmentPattern - Arguments for method TestSegmentPattern on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestSegmentPattern on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method TestSegmentPattern.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestSegmentPattern.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $TestSegmentPatternResponse = $evidently->TestSegmentPattern(
      Pattern => 'MySegmentPattern',
      Payload => 'MyJsonValue',

    );

    # Results:
    my $Match = $TestSegmentPatternResponse->Match;

    # Returns a L<Paws::Evidently::TestSegmentPatternResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/TestSegmentPattern>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Pattern => Str

The pattern to test.



=head2 B<REQUIRED> Payload => Str

A sample C<evaluationContext> JSON block to test against the specified
pattern.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestSegmentPattern in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


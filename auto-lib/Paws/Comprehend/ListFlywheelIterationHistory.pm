
package Paws::Comprehend::ListFlywheelIterationHistory;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::Comprehend::FlywheelIterationFilter');
  has FlywheelArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFlywheelIterationHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::ListFlywheelIterationHistoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListFlywheelIterationHistory - Arguments for method ListFlywheelIterationHistory on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFlywheelIterationHistory on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method ListFlywheelIterationHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFlywheelIterationHistory.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $ListFlywheelIterationHistoryResponse =
      $comprehend->ListFlywheelIterationHistory(
      FlywheelArn => 'MyComprehendFlywheelArn',
      Filter      => {
        CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
        CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $FlywheelIterationPropertiesList =
      $ListFlywheelIterationHistoryResponse->FlywheelIterationPropertiesList;
    my $NextToken = $ListFlywheelIterationHistoryResponse->NextToken;

   # Returns a L<Paws::Comprehend::ListFlywheelIterationHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/ListFlywheelIterationHistory>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::Comprehend::FlywheelIterationFilter>

Filter the flywheel iteration history based on creation time.



=head2 B<REQUIRED> FlywheelArn => Str

The ARN of the flywheel.



=head2 MaxResults => Int

Maximum number of iteration history results to return



=head2 NextToken => Str

Next token




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFlywheelIterationHistory in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


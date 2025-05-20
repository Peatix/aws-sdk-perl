
package Paws::Glue::BatchGetDataQualityResult;
  use Moose;
  has ResultIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetDataQualityResult');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::BatchGetDataQualityResultResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetDataQualityResult - Arguments for method BatchGetDataQualityResult on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetDataQualityResult on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method BatchGetDataQualityResult.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetDataQualityResult.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $BatchGetDataQualityResultResponse = $glue->BatchGetDataQualityResult(
      ResultIds => [
        'MyHashString', ...    # min: 1, max: 255
      ],

    );

    # Results:
    my $Results         = $BatchGetDataQualityResultResponse->Results;
    my $ResultsNotFound = $BatchGetDataQualityResultResponse->ResultsNotFound;

    # Returns a L<Paws::Glue::BatchGetDataQualityResultResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/BatchGetDataQualityResult>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResultIds => ArrayRef[Str|Undef]

A list of unique result IDs for the data quality results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetDataQualityResult in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


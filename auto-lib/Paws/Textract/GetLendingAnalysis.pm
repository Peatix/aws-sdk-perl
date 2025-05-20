
package Paws::Textract::GetLendingAnalysis;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLendingAnalysis');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::GetLendingAnalysisResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::GetLendingAnalysis - Arguments for method GetLendingAnalysis on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLendingAnalysis on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method GetLendingAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLendingAnalysis.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $GetLendingAnalysisResponse = $textract->GetLendingAnalysis(
      JobId      => 'MyJobId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $AnalyzeLendingModelVersion =
      $GetLendingAnalysisResponse->AnalyzeLendingModelVersion;
    my $DocumentMetadata = $GetLendingAnalysisResponse->DocumentMetadata;
    my $JobStatus        = $GetLendingAnalysisResponse->JobStatus;
    my $NextToken        = $GetLendingAnalysisResponse->NextToken;
    my $Results          = $GetLendingAnalysisResponse->Results;
    my $StatusMessage    = $GetLendingAnalysisResponse->StatusMessage;
    my $Warnings         = $GetLendingAnalysisResponse->Warnings;

    # Returns a L<Paws::Textract::GetLendingAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/GetLendingAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

A unique identifier for the lending or text-detection job. The C<JobId>
is returned from C<StartLendingAnalysis>. A C<JobId> value is only
valid for 7 days.



=head2 MaxResults => Int

The maximum number of results to return per paginated call. The largest
value that you can specify is 30. If you specify a value greater than
30, a maximum of 30 results is returned. The default value is 30.



=head2 NextToken => Str

If the previous response was incomplete, Amazon Textract returns a
pagination token in the response. You can use this pagination token to
retrieve the next set of lending results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLendingAnalysis in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


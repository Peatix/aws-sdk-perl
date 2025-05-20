
package Paws::Textract::GetLendingAnalysisSummary;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLendingAnalysisSummary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::GetLendingAnalysisSummaryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::GetLendingAnalysisSummary - Arguments for method GetLendingAnalysisSummary on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLendingAnalysisSummary on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method GetLendingAnalysisSummary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLendingAnalysisSummary.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $GetLendingAnalysisSummaryResponse =
      $textract->GetLendingAnalysisSummary(
      JobId => 'MyJobId',

      );

    # Results:
    my $AnalyzeLendingModelVersion =
      $GetLendingAnalysisSummaryResponse->AnalyzeLendingModelVersion;
    my $DocumentMetadata = $GetLendingAnalysisSummaryResponse->DocumentMetadata;
    my $JobStatus        = $GetLendingAnalysisSummaryResponse->JobStatus;
    my $StatusMessage    = $GetLendingAnalysisSummaryResponse->StatusMessage;
    my $Summary          = $GetLendingAnalysisSummaryResponse->Summary;
    my $Warnings         = $GetLendingAnalysisSummaryResponse->Warnings;

    # Returns a L<Paws::Textract::GetLendingAnalysisSummaryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/GetLendingAnalysisSummary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

A unique identifier for the lending or text-detection job. The C<JobId>
is returned from StartLendingAnalysis. A C<JobId> value is only valid
for 7 days.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLendingAnalysisSummary in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


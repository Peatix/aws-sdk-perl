
package Paws::CostExplorer::ListCommitmentPurchaseAnalyses;
  use Moose;
  has AnalysisIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AnalysisStatus => (is => 'ro', isa => 'Str');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCommitmentPurchaseAnalyses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::ListCommitmentPurchaseAnalysesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ListCommitmentPurchaseAnalyses - Arguments for method ListCommitmentPurchaseAnalyses on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCommitmentPurchaseAnalyses on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method ListCommitmentPurchaseAnalyses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCommitmentPurchaseAnalyses.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $ListCommitmentPurchaseAnalysesResponse =
      $ce->ListCommitmentPurchaseAnalyses(
      AnalysisIds => [
        'MyAnalysisId', ...    # min: 36, max: 36
      ],    # OPTIONAL
      AnalysisStatus => 'SUCCEEDED',          # OPTIONAL
      NextPageToken  => 'MyNextPageToken',    # OPTIONAL
      PageSize       => 1,                    # OPTIONAL
      );

    # Results:
    my $AnalysisSummaryList =
      $ListCommitmentPurchaseAnalysesResponse->AnalysisSummaryList;
    my $NextPageToken = $ListCommitmentPurchaseAnalysesResponse->NextPageToken;

# Returns a L<Paws::CostExplorer::ListCommitmentPurchaseAnalysesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/ListCommitmentPurchaseAnalyses>

=head1 ATTRIBUTES


=head2 AnalysisIds => ArrayRef[Str|Undef]

The analysis IDs associated with the commitment purchase analyses.



=head2 AnalysisStatus => Str

The status of the analysis.

Valid values are: C<"SUCCEEDED">, C<"PROCESSING">, C<"FAILED">

=head2 NextPageToken => Str

The token to retrieve the next set of results.



=head2 PageSize => Int

The number of analyses that you want returned in a single response
object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCommitmentPurchaseAnalyses in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::KendraRanking::Rescore;
  use Moose;
  has Documents => (is => 'ro', isa => 'ArrayRef[Paws::KendraRanking::Document]', required => 1);
  has RescoreExecutionPlanId => (is => 'ro', isa => 'Str', required => 1);
  has SearchQuery => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Rescore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KendraRanking::RescoreResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::Rescore - Arguments for method Rescore on L<Paws::KendraRanking>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Rescore on the
L<Amazon Kendra Intelligent Ranking|Paws::KendraRanking> service. Use the attributes of this class
as arguments to method Rescore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Rescore.

=head1 SYNOPSIS

    my $kendra-ranking = Paws->service('KendraRanking');
    my $RescoreResult = $kendra -ranking->Rescore(
      Documents => [
        {
          Id            => 'MyDocumentId',       # min: 1, max: 2048
          OriginalScore => 1.0,                  # min: -100000, max: 100000
          Body          => 'MyDocumentBody',     # min: 1, max: 2048; OPTIONAL
          GroupId       => 'MyGroupId',          # min: 1, max: 2048; OPTIONAL
          Title         => 'MyDocumentTitle',    # min: 1, max: 1024; OPTIONAL
          TokenizedBody => [
            'MyTokens', ...                      # min: 1, max: 2048
          ],    # min: 1; OPTIONAL
          TokenizedTitle => [
            'MyTokens', ...    # min: 1, max: 2048
          ],    # min: 1; OPTIONAL
        },
        ...
      ],
      RescoreExecutionPlanId => 'MyRescoreExecutionPlanId',
      SearchQuery            => 'MySearchQuery',

    );

    # Results:
    my $RescoreId   = $RescoreResult->RescoreId;
    my $ResultItems = $RescoreResult->ResultItems;

    # Returns a L<Paws::KendraRanking::RescoreResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra-ranking/Rescore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Documents => ArrayRef[L<Paws::KendraRanking::Document>]

The list of documents for Amazon Kendra Intelligent Ranking to rescore
or rank on.



=head2 B<REQUIRED> RescoreExecutionPlanId => Str

The identifier of the rescore execution plan. A rescore execution plan
is an Amazon Kendra Intelligent Ranking resource used for provisioning
the C<Rescore> API.



=head2 B<REQUIRED> SearchQuery => Str

The input query from the search service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Rescore in L<Paws::KendraRanking>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


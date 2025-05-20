
package Paws::Comprehend::ListDocumentClassifierSummaries;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDocumentClassifierSummaries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::ListDocumentClassifierSummariesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDocumentClassifierSummaries - Arguments for method ListDocumentClassifierSummaries on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDocumentClassifierSummaries on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method ListDocumentClassifierSummaries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDocumentClassifierSummaries.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $ListDocumentClassifierSummariesResponse =
      $comprehend->ListDocumentClassifierSummaries(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $DocumentClassifierSummariesList =
      $ListDocumentClassifierSummariesResponse->DocumentClassifierSummariesList;
    my $NextToken = $ListDocumentClassifierSummariesResponse->NextToken;

# Returns a L<Paws::Comprehend::ListDocumentClassifierSummariesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/ListDocumentClassifierSummaries>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return on each page. The default is
100.



=head2 NextToken => Str

Identifies the next page of results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDocumentClassifierSummaries in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


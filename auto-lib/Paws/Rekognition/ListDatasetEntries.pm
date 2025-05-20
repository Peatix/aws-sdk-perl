
package Paws::Rekognition::ListDatasetEntries;
  use Moose;
  has ContainsLabels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DatasetArn => (is => 'ro', isa => 'Str', required => 1);
  has HasErrors => (is => 'ro', isa => 'Bool');
  has Labeled => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SourceRefContains => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasetEntries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::ListDatasetEntriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListDatasetEntries - Arguments for method ListDatasetEntries on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasetEntries on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method ListDatasetEntries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasetEntries.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $ListDatasetEntriesResponse = $rekognition->ListDatasetEntries(
      DatasetArn     => 'MyDatasetArn',
      ContainsLabels => [
        'MyDatasetLabel', ...    # min: 1, max: 255
      ],    # OPTIONAL
      HasErrors         => 1,                              # OPTIONAL
      Labeled           => 1,                              # OPTIONAL
      MaxResults        => 1,                              # OPTIONAL
      NextToken         => 'MyExtendedPaginationToken',    # OPTIONAL
      SourceRefContains => 'MyQueryString',                # OPTIONAL
    );

    # Results:
    my $DatasetEntries = $ListDatasetEntriesResponse->DatasetEntries;
    my $NextToken      = $ListDatasetEntriesResponse->NextToken;

    # Returns a L<Paws::Rekognition::ListDatasetEntriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/ListDatasetEntries>

=head1 ATTRIBUTES


=head2 ContainsLabels => ArrayRef[Str|Undef]

Specifies a label filter for the response. The response includes an
entry only if one or more of the labels in C<ContainsLabels> exist in
the entry.



=head2 B<REQUIRED> DatasetArn => Str

The Amazon Resource Name (ARN) for the dataset that you want to use.



=head2 HasErrors => Bool

Specifies an error filter for the response. Specify C<True> to only
include entries that have errors.



=head2 Labeled => Bool

Specify C<true> to get only the JSON Lines where the image is labeled.
Specify C<false> to get only the JSON Lines where the image isn't
labeled. If you don't specify C<Labeled>, C<ListDatasetEntries> returns
JSON Lines for labeled and unlabeled images.



=head2 MaxResults => Int

The maximum number of results to return per paginated call. The largest
value you can specify is 100. If you specify a value greater than 100,
a ValidationException error occurs. The default value is 100.



=head2 NextToken => Str

If the previous response was incomplete (because there is more results
to retrieve), Amazon Rekognition Custom Labels returns a pagination
token in the response. You can use this pagination token to retrieve
the next set of results.



=head2 SourceRefContains => Str

If specified, C<ListDatasetEntries> only returns JSON Lines where the
value of C<SourceRefContains> is part of the C<source-ref> field. The
C<source-ref> field contains the Amazon S3 location of the image. You
can use C<SouceRefContains> for tasks such as getting the JSON Line for
a single image, or gettting JSON Lines for all images within a specific
folder.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasetEntries in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


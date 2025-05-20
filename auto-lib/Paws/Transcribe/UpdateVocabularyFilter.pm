
package Paws::Transcribe::UpdateVocabularyFilter;
  use Moose;
  has DataAccessRoleArn => (is => 'ro', isa => 'Str');
  has VocabularyFilterFileUri => (is => 'ro', isa => 'Str');
  has VocabularyFilterName => (is => 'ro', isa => 'Str', required => 1);
  has Words => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVocabularyFilter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::UpdateVocabularyFilterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::UpdateVocabularyFilter - Arguments for method UpdateVocabularyFilter on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVocabularyFilter on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method UpdateVocabularyFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVocabularyFilter.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $UpdateVocabularyFilterResponse = $transcribe->UpdateVocabularyFilter(
      VocabularyFilterName    => 'MyVocabularyFilterName',
      DataAccessRoleArn       => 'MyDataAccessRoleArn',      # OPTIONAL
      VocabularyFilterFileUri => 'MyUri',                    # OPTIONAL
      Words                   => [
        'MyWord', ...                                        # min: 1, max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $LanguageCode     = $UpdateVocabularyFilterResponse->LanguageCode;
    my $LastModifiedTime = $UpdateVocabularyFilterResponse->LastModifiedTime;
    my $VocabularyFilterName =
      $UpdateVocabularyFilterResponse->VocabularyFilterName;

    # Returns a L<Paws::Transcribe::UpdateVocabularyFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/UpdateVocabularyFilter>

=head1 ATTRIBUTES


=head2 DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has permissions to
access the Amazon S3 bucket that contains your input files (in this
case, your custom vocabulary filter). If the role that you specify
doesnE<rsquo>t have the appropriate permissions to access the specified
Amazon S3 location, your request fails.

IAM role ARNs have the format
C<arn:partition:iam::account:role/role-name-with-path>. For example:
C<arn:aws:iam::111122223333:role/Admin>.

For more information, see IAM ARNs
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns).



=head2 VocabularyFilterFileUri => Str

The Amazon S3 location of the text file that contains your custom
vocabulary filter terms. The URI must be located in the same Amazon Web
Services Region as the resource you're calling.

Here's an example URI path:
C<s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt>

Note that if you include C<VocabularyFilterFileUri> in your request,
you cannot use C<Words>; you must choose one or the other.



=head2 B<REQUIRED> VocabularyFilterName => Str

The name of the custom vocabulary filter you want to update. Custom
vocabulary filter names are case sensitive.



=head2 Words => ArrayRef[Str|Undef]

Use this parameter if you want to update your custom vocabulary filter
by including all desired terms, as comma-separated values, within your
request. The other option for updating your vocabulary filter is to
save your entries in a text file and upload them to an Amazon S3
bucket, then specify the location of your file using the
C<VocabularyFilterFileUri> parameter.

Note that if you include C<Words> in your request, you cannot use
C<VocabularyFilterFileUri>; you must choose one or the other.

Each language has a character set that contains all allowed characters
for that specific language. If you use unsupported characters, your
custom vocabulary filter request fails. Refer to Character Sets for
Custom Vocabularies
(https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html) to get
the character set for your language.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVocabularyFilter in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


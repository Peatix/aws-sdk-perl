package Paws::Textract;
  use Moose;
  sub service { 'textract' }
  sub signing_name { 'textract' }
  sub version { '2018-06-27' }
  sub target_prefix { 'Textract' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AnalyzeDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::AnalyzeDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AnalyzeExpense {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::AnalyzeExpense', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AnalyzeID {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::AnalyzeID', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAdapter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::CreateAdapter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAdapterVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::CreateAdapterVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAdapter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::DeleteAdapter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAdapterVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::DeleteAdapterVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectDocumentText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::DetectDocumentText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAdapter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::GetAdapter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAdapterVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::GetAdapterVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocumentAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::GetDocumentAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocumentTextDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::GetDocumentTextDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExpenseAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::GetExpenseAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLendingAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::GetLendingAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLendingAnalysisSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::GetLendingAnalysisSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAdapters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::ListAdapters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAdapterVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::ListAdapterVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDocumentAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::StartDocumentAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDocumentTextDetection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::StartDocumentTextDetection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExpenseAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::StartExpenseAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartLendingAnalysis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::StartLendingAnalysis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAdapter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Textract::UpdateAdapter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAdapters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAdapters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAdapters(@_, NextToken => $next_result->NextToken);
        push @{ $result->Adapters }, @{ $next_result->Adapters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Adapters') foreach (@{ $result->Adapters });
        $result = $self->ListAdapters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Adapters') foreach (@{ $result->Adapters });
    }

    return undef
  }
  sub ListAllAdapterVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAdapterVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAdapterVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->AdapterVersions }, @{ $next_result->AdapterVersions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AdapterVersions') foreach (@{ $result->AdapterVersions });
        $result = $self->ListAdapterVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AdapterVersions') foreach (@{ $result->AdapterVersions });
    }

    return undef
  }


  sub operations { qw/AnalyzeDocument AnalyzeExpense AnalyzeID CreateAdapter CreateAdapterVersion DeleteAdapter DeleteAdapterVersion DetectDocumentText GetAdapter GetAdapterVersion GetDocumentAnalysis GetDocumentTextDetection GetExpenseAnalysis GetLendingAnalysis GetLendingAnalysisSummary ListAdapters ListAdapterVersions ListTagsForResource StartDocumentAnalysis StartDocumentTextDetection StartExpenseAnalysis StartLendingAnalysis TagResource UntagResource UpdateAdapter / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract - Perl Interface to AWS Amazon Textract

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Textract');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Textract detects and analyzes text in documents and converts it
into machine-readable text. This is the API reference documentation for
Amazon Textract.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27>


=head1 METHODS

=head2 AnalyzeDocument

=over

=item Document => L<Paws::Textract::Document>

=item FeatureTypes => ArrayRef[Str|Undef]

=item [AdaptersConfig => L<Paws::Textract::AdaptersConfig>]

=item [HumanLoopConfig => L<Paws::Textract::HumanLoopConfig>]

=item [QueriesConfig => L<Paws::Textract::QueriesConfig>]


=back

Each argument is described in detail in: L<Paws::Textract::AnalyzeDocument>

Returns: a L<Paws::Textract::AnalyzeDocumentResponse> instance

Analyzes an input document for relationships between detected items.

The types of information returned are as follows:

=over

=item *

Form data (key-value pairs). The related information is returned in two
Block objects, each of type C<KEY_VALUE_SET>: a KEY C<Block> object and
a VALUE C<Block> object. For example, I<Name: Ana Silva Carolina>
contains a key and value. I<Name:> is the key. I<Ana Silva Carolina> is
the value.

=item *

Table and table cell data. A TABLE C<Block> object contains information
about a detected table. A CELL C<Block> object is returned for each
cell in a table.

=item *

Lines and words of text. A LINE C<Block> object contains one or more
WORD C<Block> objects. All lines and words that are detected in the
document are returned (including text that doesn't have a relationship
with the value of C<FeatureTypes>).

=item *

Signatures. A SIGNATURE C<Block> object contains the location
information of a signature in a document. If used in conjunction with
forms or tables, a signature can be given a Key-Value pairing or be
detected in the cell of a table.

=item *

Query. A QUERY Block object contains the query text, alias and link to
the associated Query results block object.

=item *

Query Result. A QUERY_RESULT Block object contains the answer to the
query and an ID that connects it to the query asked. This Block also
contains a confidence score.

=back

Selection elements such as check boxes and option buttons (radio
buttons) can be detected in form data and in tables. A
SELECTION_ELEMENT C<Block> object contains information about a
selection element, including the selection status.

You can choose which type of analysis to perform by specifying the
C<FeatureTypes> list.

The output is returned in a list of C<Block> objects.

C<AnalyzeDocument> is a synchronous operation. To analyze documents
asynchronously, use StartDocumentAnalysis.

For more information, see Document Text Analysis
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).


=head2 AnalyzeExpense

=over

=item Document => L<Paws::Textract::Document>


=back

Each argument is described in detail in: L<Paws::Textract::AnalyzeExpense>

Returns: a L<Paws::Textract::AnalyzeExpenseResponse> instance

C<AnalyzeExpense> synchronously analyzes an input document for
financially related relationships between text.

Information is returned as C<ExpenseDocuments> and seperated as
follows:

=over

=item *

C<LineItemGroups>- A data set containing C<LineItems> which store
information about the lines of text, such as an item purchased and its
price on a receipt.

=item *

C<SummaryFields>- Contains all other information a receipt, such as
header information or the vendors name.

=back



=head2 AnalyzeID

=over

=item DocumentPages => ArrayRef[L<Paws::Textract::Document>]


=back

Each argument is described in detail in: L<Paws::Textract::AnalyzeID>

Returns: a L<Paws::Textract::AnalyzeIDResponse> instance

Analyzes identity documents for relevant information. This information
is extracted and returned as C<IdentityDocumentFields>, which records
both the normalized field and value of the extracted text. Unlike other
Amazon Textract operations, C<AnalyzeID> doesn't return any Geometry
data.


=head2 CreateAdapter

=over

=item AdapterName => Str

=item FeatureTypes => ArrayRef[Str|Undef]

=item [AutoUpdate => Str]

=item [ClientRequestToken => Str]

=item [Description => Str]

=item [Tags => L<Paws::Textract::TagMap>]


=back

Each argument is described in detail in: L<Paws::Textract::CreateAdapter>

Returns: a L<Paws::Textract::CreateAdapterResponse> instance

Creates an adapter, which can be fine-tuned for enhanced performance on
user provided documents. Takes an AdapterName and FeatureType.
Currently the only supported feature type is C<QUERIES>. You can also
provide a Description, Tags, and a ClientRequestToken. You can choose
whether or not the adapter should be AutoUpdated with the AutoUpdate
argument. By default, AutoUpdate is set to DISABLED.


=head2 CreateAdapterVersion

=over

=item AdapterId => Str

=item DatasetConfig => L<Paws::Textract::AdapterVersionDatasetConfig>

=item OutputConfig => L<Paws::Textract::OutputConfig>

=item [ClientRequestToken => Str]

=item [KMSKeyId => Str]

=item [Tags => L<Paws::Textract::TagMap>]


=back

Each argument is described in detail in: L<Paws::Textract::CreateAdapterVersion>

Returns: a L<Paws::Textract::CreateAdapterVersionResponse> instance

Creates a new version of an adapter. Operates on a provided AdapterId
and a specified dataset provided via the DatasetConfig argument.
Requires that you specify an Amazon S3 bucket with the OutputConfig
argument. You can provide an optional KMSKeyId, an optional
ClientRequestToken, and optional tags.


=head2 DeleteAdapter

=over

=item AdapterId => Str


=back

Each argument is described in detail in: L<Paws::Textract::DeleteAdapter>

Returns: a L<Paws::Textract::DeleteAdapterResponse> instance

Deletes an Amazon Textract adapter. Takes an AdapterId and deletes the
adapter specified by the ID.


=head2 DeleteAdapterVersion

=over

=item AdapterId => Str

=item AdapterVersion => Str


=back

Each argument is described in detail in: L<Paws::Textract::DeleteAdapterVersion>

Returns: a L<Paws::Textract::DeleteAdapterVersionResponse> instance

Deletes an Amazon Textract adapter version. Requires that you specify
both an AdapterId and a AdapterVersion. Deletes the adapter version
specified by the AdapterId and the AdapterVersion.


=head2 DetectDocumentText

=over

=item Document => L<Paws::Textract::Document>


=back

Each argument is described in detail in: L<Paws::Textract::DetectDocumentText>

Returns: a L<Paws::Textract::DetectDocumentTextResponse> instance

Detects text in the input document. Amazon Textract can detect lines of
text and the words that make up a line of text. The input document must
be in one of the following image formats: JPEG, PNG, PDF, or TIFF.
C<DetectDocumentText> returns the detected text in an array of Block
objects.

Each document page has as an associated C<Block> of type PAGE. Each
PAGE C<Block> object is the parent of LINE C<Block> objects that
represent the lines of detected text on a page. A LINE C<Block> object
is a parent for each word that makes up the line. Words are represented
by C<Block> objects of type WORD.

C<DetectDocumentText> is a synchronous operation. To analyze documents
asynchronously, use StartDocumentTextDetection.

For more information, see Document Text Detection
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).


=head2 GetAdapter

=over

=item AdapterId => Str


=back

Each argument is described in detail in: L<Paws::Textract::GetAdapter>

Returns: a L<Paws::Textract::GetAdapterResponse> instance

Gets configuration information for an adapter specified by an
AdapterId, returning information on AdapterName, Description,
CreationTime, AutoUpdate status, and FeatureTypes.


=head2 GetAdapterVersion

=over

=item AdapterId => Str

=item AdapterVersion => Str


=back

Each argument is described in detail in: L<Paws::Textract::GetAdapterVersion>

Returns: a L<Paws::Textract::GetAdapterVersionResponse> instance

Gets configuration information for the specified adapter version,
including: AdapterId, AdapterVersion, FeatureTypes, Status,
StatusMessage, DatasetConfig, KMSKeyId, OutputConfig, Tags and
EvaluationMetrics.


=head2 GetDocumentAnalysis

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Textract::GetDocumentAnalysis>

Returns: a L<Paws::Textract::GetDocumentAnalysisResponse> instance

Gets the results for an Amazon Textract asynchronous operation that
analyzes text in a document.

You start asynchronous text analysis by calling StartDocumentAnalysis,
which returns a job identifier (C<JobId>). When the text analysis
operation finishes, Amazon Textract publishes a completion status to
the Amazon Simple Notification Service (Amazon SNS) topic that's
registered in the initial call to C<StartDocumentAnalysis>. To get the
results of the text-detection operation, first check that the status
value published to the Amazon SNS topic is C<SUCCEEDED>. If so, call
C<GetDocumentAnalysis>, and pass the job identifier (C<JobId>) from the
initial call to C<StartDocumentAnalysis>.

C<GetDocumentAnalysis> returns an array of Block objects. The following
types of information are returned:

=over

=item *

Form data (key-value pairs). The related information is returned in two
Block objects, each of type C<KEY_VALUE_SET>: a KEY C<Block> object and
a VALUE C<Block> object. For example, I<Name: Ana Silva Carolina>
contains a key and value. I<Name:> is the key. I<Ana Silva Carolina> is
the value.

=item *

Table and table cell data. A TABLE C<Block> object contains information
about a detected table. A CELL C<Block> object is returned for each
cell in a table.

=item *

Lines and words of text. A LINE C<Block> object contains one or more
WORD C<Block> objects. All lines and words that are detected in the
document are returned (including text that doesn't have a relationship
with the value of the C<StartDocumentAnalysis> C<FeatureTypes> input
parameter).

=item *

Query. A QUERY Block object contains the query text, alias and link to
the associated Query results block object.

=item *

Query Results. A QUERY_RESULT Block object contains the answer to the
query and an ID that connects it to the query asked. This Block also
contains a confidence score.

=back

While processing a document with queries, look out for
C<INVALID_REQUEST_PARAMETERS> output. This indicates that either the
per page query limit has been exceeded or that the operation is trying
to query a page in the document which doesnE<rsquo>t exist.

Selection elements such as check boxes and option buttons (radio
buttons) can be detected in form data and in tables. A
SELECTION_ELEMENT C<Block> object contains information about a
selection element, including the selection status.

Use the C<MaxResults> parameter to limit the number of blocks that are
returned. If there are more results than specified in C<MaxResults>,
the value of C<NextToken> in the operation response contains a
pagination token for getting the next set of results. To get the next
page of results, call C<GetDocumentAnalysis>, and populate the
C<NextToken> request parameter with the token value that's returned
from the previous call to C<GetDocumentAnalysis>.

For more information, see Document Text Analysis
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).


=head2 GetDocumentTextDetection

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Textract::GetDocumentTextDetection>

Returns: a L<Paws::Textract::GetDocumentTextDetectionResponse> instance

Gets the results for an Amazon Textract asynchronous operation that
detects text in a document. Amazon Textract can detect lines of text
and the words that make up a line of text.

You start asynchronous text detection by calling
StartDocumentTextDetection, which returns a job identifier (C<JobId>).
When the text detection operation finishes, Amazon Textract publishes a
completion status to the Amazon Simple Notification Service (Amazon
SNS) topic that's registered in the initial call to
C<StartDocumentTextDetection>. To get the results of the text-detection
operation, first check that the status value published to the Amazon
SNS topic is C<SUCCEEDED>. If so, call C<GetDocumentTextDetection>, and
pass the job identifier (C<JobId>) from the initial call to
C<StartDocumentTextDetection>.

C<GetDocumentTextDetection> returns an array of Block objects.

Each document page has as an associated C<Block> of type PAGE. Each
PAGE C<Block> object is the parent of LINE C<Block> objects that
represent the lines of detected text on a page. A LINE C<Block> object
is a parent for each word that makes up the line. Words are represented
by C<Block> objects of type WORD.

Use the MaxResults parameter to limit the number of blocks that are
returned. If there are more results than specified in C<MaxResults>,
the value of C<NextToken> in the operation response contains a
pagination token for getting the next set of results. To get the next
page of results, call C<GetDocumentTextDetection>, and populate the
C<NextToken> request parameter with the token value that's returned
from the previous call to C<GetDocumentTextDetection>.

For more information, see Document Text Detection
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).


=head2 GetExpenseAnalysis

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Textract::GetExpenseAnalysis>

Returns: a L<Paws::Textract::GetExpenseAnalysisResponse> instance

Gets the results for an Amazon Textract asynchronous operation that
analyzes invoices and receipts. Amazon Textract finds contact
information, items purchased, and vendor name, from input invoices and
receipts.

You start asynchronous invoice/receipt analysis by calling
StartExpenseAnalysis, which returns a job identifier (C<JobId>). Upon
completion of the invoice/receipt analysis, Amazon Textract publishes
the completion status to the Amazon Simple Notification Service (Amazon
SNS) topic. This topic must be registered in the initial call to
C<StartExpenseAnalysis>. To get the results of the invoice/receipt
analysis operation, first ensure that the status value published to the
Amazon SNS topic is C<SUCCEEDED>. If so, call C<GetExpenseAnalysis>,
and pass the job identifier (C<JobId>) from the initial call to
C<StartExpenseAnalysis>.

Use the MaxResults parameter to limit the number of blocks that are
returned. If there are more results than specified in C<MaxResults>,
the value of C<NextToken> in the operation response contains a
pagination token for getting the next set of results. To get the next
page of results, call C<GetExpenseAnalysis>, and populate the
C<NextToken> request parameter with the token value that's returned
from the previous call to C<GetExpenseAnalysis>.

For more information, see Analyzing Invoices and Receipts
(https://docs.aws.amazon.com/textract/latest/dg/invoices-receipts.html).


=head2 GetLendingAnalysis

=over

=item JobId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Textract::GetLendingAnalysis>

Returns: a L<Paws::Textract::GetLendingAnalysisResponse> instance

Gets the results for an Amazon Textract asynchronous operation that
analyzes text in a lending document.

You start asynchronous text analysis by calling
C<StartLendingAnalysis>, which returns a job identifier (C<JobId>).
When the text analysis operation finishes, Amazon Textract publishes a
completion status to the Amazon Simple Notification Service (Amazon
SNS) topic that's registered in the initial call to
C<StartLendingAnalysis>.

To get the results of the text analysis operation, first check that the
status value published to the Amazon SNS topic is SUCCEEDED. If so,
call GetLendingAnalysis, and pass the job identifier (C<JobId>) from
the initial call to C<StartLendingAnalysis>.


=head2 GetLendingAnalysisSummary

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Textract::GetLendingAnalysisSummary>

Returns: a L<Paws::Textract::GetLendingAnalysisSummaryResponse> instance

Gets summarized results for the C<StartLendingAnalysis> operation,
which analyzes text in a lending document. The returned summary
consists of information about documents grouped together by a common
document type. Information like detected signatures, page numbers, and
split documents is returned with respect to the type of grouped
document.

You start asynchronous text analysis by calling
C<StartLendingAnalysis>, which returns a job identifier (C<JobId>).
When the text analysis operation finishes, Amazon Textract publishes a
completion status to the Amazon Simple Notification Service (Amazon
SNS) topic that's registered in the initial call to
C<StartLendingAnalysis>.

To get the results of the text analysis operation, first check that the
status value published to the Amazon SNS topic is SUCCEEDED. If so,
call C<GetLendingAnalysisSummary>, and pass the job identifier
(C<JobId>) from the initial call to C<StartLendingAnalysis>.


=head2 ListAdapters

=over

=item [AfterCreationTime => Str]

=item [BeforeCreationTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Textract::ListAdapters>

Returns: a L<Paws::Textract::ListAdaptersResponse> instance

Lists all adapters that match the specified filtration criteria.


=head2 ListAdapterVersions

=over

=item [AdapterId => Str]

=item [AfterCreationTime => Str]

=item [BeforeCreationTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Textract::ListAdapterVersions>

Returns: a L<Paws::Textract::ListAdapterVersionsResponse> instance

List all version of an adapter that meet the specified filtration
criteria.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Textract::ListTagsForResource>

Returns: a L<Paws::Textract::ListTagsForResourceResponse> instance

Lists all tags for an Amazon Textract resource.


=head2 StartDocumentAnalysis

=over

=item DocumentLocation => L<Paws::Textract::DocumentLocation>

=item FeatureTypes => ArrayRef[Str|Undef]

=item [AdaptersConfig => L<Paws::Textract::AdaptersConfig>]

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [KMSKeyId => Str]

=item [NotificationChannel => L<Paws::Textract::NotificationChannel>]

=item [OutputConfig => L<Paws::Textract::OutputConfig>]

=item [QueriesConfig => L<Paws::Textract::QueriesConfig>]


=back

Each argument is described in detail in: L<Paws::Textract::StartDocumentAnalysis>

Returns: a L<Paws::Textract::StartDocumentAnalysisResponse> instance

Starts the asynchronous analysis of an input document for relationships
between detected items such as key-value pairs, tables, and selection
elements.

C<StartDocumentAnalysis> can analyze text in documents that are in
JPEG, PNG, TIFF, and PDF format. The documents are stored in an Amazon
S3 bucket. Use DocumentLocation to specify the bucket name and file
name of the document.

C<StartDocumentAnalysis> returns a job identifier (C<JobId>) that you
use to get the results of the operation. When text analysis is
finished, Amazon Textract publishes a completion status to the Amazon
Simple Notification Service (Amazon SNS) topic that you specify in
C<NotificationChannel>. To get the results of the text analysis
operation, first check that the status value published to the Amazon
SNS topic is C<SUCCEEDED>. If so, call GetDocumentAnalysis, and pass
the job identifier (C<JobId>) from the initial call to
C<StartDocumentAnalysis>.

For more information, see Document Text Analysis
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).


=head2 StartDocumentTextDetection

=over

=item DocumentLocation => L<Paws::Textract::DocumentLocation>

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [KMSKeyId => Str]

=item [NotificationChannel => L<Paws::Textract::NotificationChannel>]

=item [OutputConfig => L<Paws::Textract::OutputConfig>]


=back

Each argument is described in detail in: L<Paws::Textract::StartDocumentTextDetection>

Returns: a L<Paws::Textract::StartDocumentTextDetectionResponse> instance

Starts the asynchronous detection of text in a document. Amazon
Textract can detect lines of text and the words that make up a line of
text.

C<StartDocumentTextDetection> can analyze text in documents that are in
JPEG, PNG, TIFF, and PDF format. The documents are stored in an Amazon
S3 bucket. Use DocumentLocation to specify the bucket name and file
name of the document.

C<StartTextDetection> returns a job identifier (C<JobId>) that you use
to get the results of the operation. When text detection is finished,
Amazon Textract publishes a completion status to the Amazon Simple
Notification Service (Amazon SNS) topic that you specify in
C<NotificationChannel>. To get the results of the text detection
operation, first check that the status value published to the Amazon
SNS topic is C<SUCCEEDED>. If so, call GetDocumentTextDetection, and
pass the job identifier (C<JobId>) from the initial call to
C<StartDocumentTextDetection>.

For more information, see Document Text Detection
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).


=head2 StartExpenseAnalysis

=over

=item DocumentLocation => L<Paws::Textract::DocumentLocation>

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [KMSKeyId => Str]

=item [NotificationChannel => L<Paws::Textract::NotificationChannel>]

=item [OutputConfig => L<Paws::Textract::OutputConfig>]


=back

Each argument is described in detail in: L<Paws::Textract::StartExpenseAnalysis>

Returns: a L<Paws::Textract::StartExpenseAnalysisResponse> instance

Starts the asynchronous analysis of invoices or receipts for data like
contact information, items purchased, and vendor names.

C<StartExpenseAnalysis> can analyze text in documents that are in JPEG,
PNG, and PDF format. The documents must be stored in an Amazon S3
bucket. Use the DocumentLocation parameter to specify the name of your
S3 bucket and the name of the document in that bucket.

C<StartExpenseAnalysis> returns a job identifier (C<JobId>) that you
will provide to C<GetExpenseAnalysis> to retrieve the results of the
operation. When the analysis of the input invoices/receipts is
finished, Amazon Textract publishes a completion status to the Amazon
Simple Notification Service (Amazon SNS) topic that you provide to the
C<NotificationChannel>. To obtain the results of the invoice and
receipt analysis operation, ensure that the status value published to
the Amazon SNS topic is C<SUCCEEDED>. If so, call GetExpenseAnalysis,
and pass the job identifier (C<JobId>) that was returned by your call
to C<StartExpenseAnalysis>.

For more information, see Analyzing Invoices and Receipts
(https://docs.aws.amazon.com/textract/latest/dg/invoice-receipts.html).


=head2 StartLendingAnalysis

=over

=item DocumentLocation => L<Paws::Textract::DocumentLocation>

=item [ClientRequestToken => Str]

=item [JobTag => Str]

=item [KMSKeyId => Str]

=item [NotificationChannel => L<Paws::Textract::NotificationChannel>]

=item [OutputConfig => L<Paws::Textract::OutputConfig>]


=back

Each argument is described in detail in: L<Paws::Textract::StartLendingAnalysis>

Returns: a L<Paws::Textract::StartLendingAnalysisResponse> instance

Starts the classification and analysis of an input document.
C<StartLendingAnalysis> initiates the classification and analysis of a
packet of lending documents. C<StartLendingAnalysis> operates on a
document file located in an Amazon S3 bucket.

C<StartLendingAnalysis> can analyze text in documents that are in one
of the following formats: JPEG, PNG, TIFF, PDF. Use C<DocumentLocation>
to specify the bucket name and the file name of the document.

C<StartLendingAnalysis> returns a job identifier (C<JobId>) that you
use to get the results of the operation. When the text analysis is
finished, Amazon Textract publishes a completion status to the Amazon
Simple Notification Service (Amazon SNS) topic that you specify in
C<NotificationChannel>. To get the results of the text analysis
operation, first check that the status value published to the Amazon
SNS topic is SUCCEEDED. If the status is SUCCEEDED you can call either
C<GetLendingAnalysis> or C<GetLendingAnalysisSummary> and provide the
C<JobId> to obtain the results of the analysis.

If using C<OutputConfig> to specify an Amazon S3 bucket, the output
will be contained within the specified prefix in a directory labeled
with the job-id. In the directory there are 3 sub-directories:

=over

=item *

detailedResponse (contains the GetLendingAnalysis response)

=item *

summaryResponse (for the GetLendingAnalysisSummary response)

=item *

splitDocuments (documents split across logical boundaries)

=back



=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => L<Paws::Textract::TagMap>


=back

Each argument is described in detail in: L<Paws::Textract::TagResource>

Returns: a L<Paws::Textract::TagResourceResponse> instance

Adds one or more tags to the specified resource.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Textract::UntagResource>

Returns: a L<Paws::Textract::UntagResourceResponse> instance

Removes any tags with the specified keys from the specified resource.


=head2 UpdateAdapter

=over

=item AdapterId => Str

=item [AdapterName => Str]

=item [AutoUpdate => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Textract::UpdateAdapter>

Returns: a L<Paws::Textract::UpdateAdapterResponse> instance

Update the configuration for an adapter. FeatureTypes configurations
cannot be updated. At least one new parameter must be specified as an
argument.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAdapters(sub { },[AfterCreationTime => Str, BeforeCreationTime => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAdapters([AfterCreationTime => Str, BeforeCreationTime => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Adapters, passing the object as the first parameter, and the string 'Adapters' as the second parameter 

If not, it will return a a L<Paws::Textract::ListAdaptersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAdapterVersions(sub { },[AdapterId => Str, AfterCreationTime => Str, BeforeCreationTime => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllAdapterVersions([AdapterId => Str, AfterCreationTime => Str, BeforeCreationTime => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AdapterVersions, passing the object as the first parameter, and the string 'AdapterVersions' as the second parameter 

If not, it will return a a L<Paws::Textract::ListAdapterVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


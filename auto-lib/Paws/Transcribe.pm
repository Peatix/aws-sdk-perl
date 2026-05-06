package Paws::Transcribe;
  use Moose;
  sub service { 'transcribe' }
  sub signing_name { 'transcribe' }
  sub version { '2017-10-26' }
  sub target_prefix { 'Transcribe' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateCallAnalyticsCategory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::CreateCallAnalyticsCategory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLanguageModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::CreateLanguageModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMedicalVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::CreateMedicalVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::CreateVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVocabularyFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::CreateVocabularyFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCallAnalyticsCategory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteCallAnalyticsCategory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCallAnalyticsJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteCallAnalyticsJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLanguageModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteLanguageModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMedicalScribeJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteMedicalScribeJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMedicalTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteMedicalTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMedicalVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteMedicalVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVocabularyFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteVocabularyFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLanguageModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DescribeLanguageModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCallAnalyticsCategory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetCallAnalyticsCategory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCallAnalyticsJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetCallAnalyticsJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMedicalScribeJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetMedicalScribeJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMedicalTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetMedicalTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMedicalVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetMedicalVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVocabularyFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetVocabularyFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCallAnalyticsCategories {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListCallAnalyticsCategories', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCallAnalyticsJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListCallAnalyticsJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLanguageModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListLanguageModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMedicalScribeJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListMedicalScribeJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMedicalTranscriptionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListMedicalTranscriptionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMedicalVocabularies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListMedicalVocabularies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTranscriptionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListTranscriptionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVocabularies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListVocabularies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVocabularyFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListVocabularyFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCallAnalyticsJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::StartCallAnalyticsJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMedicalScribeJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::StartMedicalScribeJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMedicalTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::StartMedicalTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::StartTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCallAnalyticsCategory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::UpdateCallAnalyticsCategory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMedicalVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::UpdateMedicalVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::UpdateVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVocabularyFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::UpdateVocabularyFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateCallAnalyticsCategory CreateLanguageModel CreateMedicalVocabulary CreateVocabulary CreateVocabularyFilter DeleteCallAnalyticsCategory DeleteCallAnalyticsJob DeleteLanguageModel DeleteMedicalScribeJob DeleteMedicalTranscriptionJob DeleteMedicalVocabulary DeleteTranscriptionJob DeleteVocabulary DeleteVocabularyFilter DescribeLanguageModel GetCallAnalyticsCategory GetCallAnalyticsJob GetMedicalScribeJob GetMedicalTranscriptionJob GetMedicalVocabulary GetTranscriptionJob GetVocabulary GetVocabularyFilter ListCallAnalyticsCategories ListCallAnalyticsJobs ListLanguageModels ListMedicalScribeJobs ListMedicalTranscriptionJobs ListMedicalVocabularies ListTagsForResource ListTranscriptionJobs ListVocabularies ListVocabularyFilters StartCallAnalyticsJob StartMedicalScribeJob StartMedicalTranscriptionJob StartTranscriptionJob TagResource UntagResource UpdateCallAnalyticsCategory UpdateMedicalVocabulary UpdateVocabulary UpdateVocabularyFilter / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe - Perl Interface to AWS Amazon Transcribe Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Transcribe');
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

Amazon Transcribe offers three main types of batch transcription:
B<Standard>, B<Medical>, and B<Call Analytics>.

=over

=item *

B<Standard transcriptions> are the most common option. Refer to for
details.

=item *

B<Medical transcriptions> are tailored to medical professionals and
incorporate medical terms. A common use case for this service is
transcribing doctor-patient dialogue into after-visit notes. Refer to
for details.

=item *

B<Call Analytics transcriptions> are designed for use with call center
audio on two different channels; if you're looking for insight into
customer service calls, use this option. Refer to for details.

=back


For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateCallAnalyticsCategory

=over

=item CategoryName => Str

=item Rules => ArrayRef[L<Paws::Transcribe::Rule>]

=item [InputType => Str]

=item [Tags => ArrayRef[L<Paws::Transcribe::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transcribe::CreateCallAnalyticsCategory>

Returns: a L<Paws::Transcribe::CreateCallAnalyticsCategoryResponse> instance

Creates a new Call Analytics category.

All categories are automatically applied to your Call Analytics
transcriptions. Note that in order to apply categories to your
transcriptions, you must create them before submitting your
transcription request, as categories cannot be applied retroactively.

When creating a new category, you can use the C<InputType> parameter to
label the category as a C<POST_CALL> or a C<REAL_TIME> category.
C<POST_CALL> categories can only be applied to post-call transcriptions
and C<REAL_TIME> categories can only be applied to real-time
transcriptions. If you do not include C<InputType>, your category is
created as a C<POST_CALL> category by default.

Call Analytics categories are composed of rules. For each category, you
must create between 1 and 20 rules. Rules can include these parameters:
, , , and .

To update an existing category, see .

To learn more about Call Analytics categories, see Creating categories
for post-call transcriptions
(https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html)
and Creating categories for real-time transcriptions
(https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html).


=head2 CreateLanguageModel

=over

=item BaseModelName => Str

=item InputDataConfig => L<Paws::Transcribe::InputDataConfig>

=item LanguageCode => Str

=item ModelName => Str

=item [Tags => ArrayRef[L<Paws::Transcribe::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transcribe::CreateLanguageModel>

Returns: a L<Paws::Transcribe::CreateLanguageModelResponse> instance

Creates a new custom language model.

When creating a new custom language model, you must specify:

=over

=item *

If you want a Wideband (audio sample rates over 16,000 Hz) or
Narrowband (audio sample rates under 16,000 Hz) base model

=item *

The location of your training and tuning files (this must be an Amazon
S3 URI)

=item *

The language of your model

=item *

A unique name for your model

=back



=head2 CreateMedicalVocabulary

=over

=item LanguageCode => Str

=item VocabularyFileUri => Str

=item VocabularyName => Str

=item [Tags => ArrayRef[L<Paws::Transcribe::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transcribe::CreateMedicalVocabulary>

Returns: a L<Paws::Transcribe::CreateMedicalVocabularyResponse> instance

Creates a new custom medical vocabulary.

Before creating a new custom medical vocabulary, you must first upload
a text file that contains your vocabulary table into an Amazon S3
bucket. Note that this differs from , where you can include a list of
terms within your request using the C<Phrases> flag;
C<CreateMedicalVocabulary> does not support the C<Phrases> flag and
only accepts vocabularies in table format.

Each language has a character set that contains all allowed characters
for that specific language. If you use unsupported characters, your
custom vocabulary request fails. Refer to Character Sets for Custom
Vocabularies
(https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html) to get
the character set for your language.

For more information, see Custom vocabularies
(https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html).


=head2 CreateVocabulary

=over

=item LanguageCode => Str

=item VocabularyName => Str

=item [DataAccessRoleArn => Str]

=item [Phrases => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Transcribe::Tag>]]

=item [VocabularyFileUri => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::CreateVocabulary>

Returns: a L<Paws::Transcribe::CreateVocabularyResponse> instance

Creates a new custom vocabulary.

When creating a new custom vocabulary, you can either upload a text
file that contains your new entries, phrases, and terms into an Amazon
S3 bucket and include the URI in your request. Or you can include a
list of terms directly in your request using the C<Phrases> flag.

Each language has a character set that contains all allowed characters
for that specific language. If you use unsupported characters, your
custom vocabulary request fails. Refer to Character Sets for Custom
Vocabularies
(https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html) to get
the character set for your language.

For more information, see Custom vocabularies
(https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html).


=head2 CreateVocabularyFilter

=over

=item LanguageCode => Str

=item VocabularyFilterName => Str

=item [DataAccessRoleArn => Str]

=item [Tags => ArrayRef[L<Paws::Transcribe::Tag>]]

=item [VocabularyFilterFileUri => Str]

=item [Words => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Transcribe::CreateVocabularyFilter>

Returns: a L<Paws::Transcribe::CreateVocabularyFilterResponse> instance

Creates a new custom vocabulary filter.

You can use custom vocabulary filters to mask, delete, or flag specific
words from your transcript. Custom vocabulary filters are commonly used
to mask profanity in transcripts.

Each language has a character set that contains all allowed characters
for that specific language. If you use unsupported characters, your
custom vocabulary filter request fails. Refer to Character Sets for
Custom Vocabularies
(https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html) to get
the character set for your language.

For more information, see Vocabulary filtering
(https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html).


=head2 DeleteCallAnalyticsCategory

=over

=item CategoryName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteCallAnalyticsCategory>

Returns: a L<Paws::Transcribe::DeleteCallAnalyticsCategoryResponse> instance

Deletes a Call Analytics category. To use this operation, specify the
name of the category you want to delete using C<CategoryName>. Category
names are case sensitive.


=head2 DeleteCallAnalyticsJob

=over

=item CallAnalyticsJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteCallAnalyticsJob>

Returns: a L<Paws::Transcribe::DeleteCallAnalyticsJobResponse> instance

Deletes a Call Analytics job. To use this operation, specify the name
of the job you want to delete using C<CallAnalyticsJobName>. Job names
are case sensitive.


=head2 DeleteLanguageModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteLanguageModel>

Returns: nothing

Deletes a custom language model. To use this operation, specify the
name of the language model you want to delete using C<ModelName>.
custom language model names are case sensitive.


=head2 DeleteMedicalScribeJob

=over

=item MedicalScribeJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteMedicalScribeJob>

Returns: nothing

Deletes a Medical Scribe job. To use this operation, specify the name
of the job you want to delete using C<MedicalScribeJobName>. Job names
are case sensitive.


=head2 DeleteMedicalTranscriptionJob

=over

=item MedicalTranscriptionJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteMedicalTranscriptionJob>

Returns: nothing

Deletes a medical transcription job. To use this operation, specify the
name of the job you want to delete using
C<MedicalTranscriptionJobName>. Job names are case sensitive.


=head2 DeleteMedicalVocabulary

=over

=item VocabularyName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteMedicalVocabulary>

Returns: nothing

Deletes a custom medical vocabulary. To use this operation, specify the
name of the custom vocabulary you want to delete using
C<VocabularyName>. Custom vocabulary names are case sensitive.


=head2 DeleteTranscriptionJob

=over

=item TranscriptionJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteTranscriptionJob>

Returns: nothing

Deletes a transcription job. To use this operation, specify the name of
the job you want to delete using C<TranscriptionJobName>. Job names are
case sensitive.


=head2 DeleteVocabulary

=over

=item VocabularyName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteVocabulary>

Returns: nothing

Deletes a custom vocabulary. To use this operation, specify the name of
the custom vocabulary you want to delete using C<VocabularyName>.
Custom vocabulary names are case sensitive.


=head2 DeleteVocabularyFilter

=over

=item VocabularyFilterName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteVocabularyFilter>

Returns: nothing

Deletes a custom vocabulary filter. To use this operation, specify the
name of the custom vocabulary filter you want to delete using
C<VocabularyFilterName>. Custom vocabulary filter names are case
sensitive.


=head2 DescribeLanguageModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DescribeLanguageModel>

Returns: a L<Paws::Transcribe::DescribeLanguageModelResponse> instance

Provides information about the specified custom language model.

This operation also shows if the base language model that you used to
create your custom language model has been updated. If Amazon
Transcribe has updated the base model, you can create a new custom
language model using the updated base model.

If you tried to create a new custom language model and the request
wasn't successful, you can use C<DescribeLanguageModel> to help
identify the reason for this failure.


=head2 GetCallAnalyticsCategory

=over

=item CategoryName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetCallAnalyticsCategory>

Returns: a L<Paws::Transcribe::GetCallAnalyticsCategoryResponse> instance

Provides information about the specified Call Analytics category.

To get a list of your Call Analytics categories, use the operation.


=head2 GetCallAnalyticsJob

=over

=item CallAnalyticsJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetCallAnalyticsJob>

Returns: a L<Paws::Transcribe::GetCallAnalyticsJobResponse> instance

Provides information about the specified Call Analytics job.

To view the job's status, refer to C<CallAnalyticsJobStatus>. If the
status is C<COMPLETED>, the job is finished. You can find your
completed transcript at the URI specified in C<TranscriptFileUri>. If
the status is C<FAILED>, C<FailureReason> provides details on why your
transcription job failed.

If you enabled personally identifiable information (PII) redaction, the
redacted transcript appears at the location specified in
C<RedactedTranscriptFileUri>.

If you chose to redact the audio in your media file, you can find your
redacted media file at the location specified in
C<RedactedMediaFileUri>.

To get a list of your Call Analytics jobs, use the operation.


=head2 GetMedicalScribeJob

=over

=item MedicalScribeJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetMedicalScribeJob>

Returns: a L<Paws::Transcribe::GetMedicalScribeJobResponse> instance

Provides information about the specified Medical Scribe job.

To view the status of the specified medical transcription job, check
the C<MedicalScribeJobStatus> field. If the status is C<COMPLETED>, the
job is finished. You can find the results at the location specified in
C<MedicalScribeOutput>. If the status is C<FAILED>, C<FailureReason>
provides details on why your Medical Scribe job failed.

To get a list of your Medical Scribe jobs, use the operation.


=head2 GetMedicalTranscriptionJob

=over

=item MedicalTranscriptionJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetMedicalTranscriptionJob>

Returns: a L<Paws::Transcribe::GetMedicalTranscriptionJobResponse> instance

Provides information about the specified medical transcription job.

To view the status of the specified medical transcription job, check
the C<TranscriptionJobStatus> field. If the status is C<COMPLETED>, the
job is finished. You can find the results at the location specified in
C<TranscriptFileUri>. If the status is C<FAILED>, C<FailureReason>
provides details on why your transcription job failed.

To get a list of your medical transcription jobs, use the operation.


=head2 GetMedicalVocabulary

=over

=item VocabularyName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetMedicalVocabulary>

Returns: a L<Paws::Transcribe::GetMedicalVocabularyResponse> instance

Provides information about the specified custom medical vocabulary.

To view the status of the specified custom medical vocabulary, check
the C<VocabularyState> field. If the status is C<READY>, your custom
vocabulary is available to use. If the status is C<FAILED>,
C<FailureReason> provides details on why your vocabulary failed.

To get a list of your custom medical vocabularies, use the operation.


=head2 GetTranscriptionJob

=over

=item TranscriptionJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetTranscriptionJob>

Returns: a L<Paws::Transcribe::GetTranscriptionJobResponse> instance

Provides information about the specified transcription job.

To view the status of the specified transcription job, check the
C<TranscriptionJobStatus> field. If the status is C<COMPLETED>, the job
is finished. You can find the results at the location specified in
C<TranscriptFileUri>. If the status is C<FAILED>, C<FailureReason>
provides details on why your transcription job failed.

If you enabled content redaction, the redacted transcript can be found
at the location specified in C<RedactedTranscriptFileUri>.

To get a list of your transcription jobs, use the operation.


=head2 GetVocabulary

=over

=item VocabularyName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetVocabulary>

Returns: a L<Paws::Transcribe::GetVocabularyResponse> instance

Provides information about the specified custom vocabulary.

To view the status of the specified custom vocabulary, check the
C<VocabularyState> field. If the status is C<READY>, your custom
vocabulary is available to use. If the status is C<FAILED>,
C<FailureReason> provides details on why your custom vocabulary failed.

To get a list of your custom vocabularies, use the operation.


=head2 GetVocabularyFilter

=over

=item VocabularyFilterName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetVocabularyFilter>

Returns: a L<Paws::Transcribe::GetVocabularyFilterResponse> instance

Provides information about the specified custom vocabulary filter.

To get a list of your custom vocabulary filters, use the operation.


=head2 ListCallAnalyticsCategories

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListCallAnalyticsCategories>

Returns: a L<Paws::Transcribe::ListCallAnalyticsCategoriesResponse> instance

Provides a list of Call Analytics categories, including all rules that
make up each category.

To get detailed information about a specific Call Analytics category,
use the operation.


=head2 ListCallAnalyticsJobs

=over

=item [JobNameContains => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListCallAnalyticsJobs>

Returns: a L<Paws::Transcribe::ListCallAnalyticsJobsResponse> instance

Provides a list of Call Analytics jobs that match the specified
criteria. If no criteria are specified, all Call Analytics jobs are
returned.

To get detailed information about a specific Call Analytics job, use
the operation.


=head2 ListLanguageModels

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListLanguageModels>

Returns: a L<Paws::Transcribe::ListLanguageModelsResponse> instance

Provides a list of custom language models that match the specified
criteria. If no criteria are specified, all custom language models are
returned.

To get detailed information about a specific custom language model, use
the operation.


=head2 ListMedicalScribeJobs

=over

=item [JobNameContains => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListMedicalScribeJobs>

Returns: a L<Paws::Transcribe::ListMedicalScribeJobsResponse> instance

Provides a list of Medical Scribe jobs that match the specified
criteria. If no criteria are specified, all Medical Scribe jobs are
returned.

To get detailed information about a specific Medical Scribe job, use
the operation.


=head2 ListMedicalTranscriptionJobs

=over

=item [JobNameContains => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListMedicalTranscriptionJobs>

Returns: a L<Paws::Transcribe::ListMedicalTranscriptionJobsResponse> instance

Provides a list of medical transcription jobs that match the specified
criteria. If no criteria are specified, all medical transcription jobs
are returned.

To get detailed information about a specific medical transcription job,
use the operation.


=head2 ListMedicalVocabularies

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [StateEquals => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListMedicalVocabularies>

Returns: a L<Paws::Transcribe::ListMedicalVocabulariesResponse> instance

Provides a list of custom medical vocabularies that match the specified
criteria. If no criteria are specified, all custom medical vocabularies
are returned.

To get detailed information about a specific custom medical vocabulary,
use the operation.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::ListTagsForResource>

Returns: a L<Paws::Transcribe::ListTagsForResourceResponse> instance

Lists all tags associated with the specified transcription job,
vocabulary, model, or resource.

To learn more about using tags with Amazon Transcribe, refer to Tagging
resources
(https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).


=head2 ListTranscriptionJobs

=over

=item [JobNameContains => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListTranscriptionJobs>

Returns: a L<Paws::Transcribe::ListTranscriptionJobsResponse> instance

Provides a list of transcription jobs that match the specified
criteria. If no criteria are specified, all transcription jobs are
returned.

To get detailed information about a specific transcription job, use the
operation.


=head2 ListVocabularies

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [StateEquals => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListVocabularies>

Returns: a L<Paws::Transcribe::ListVocabulariesResponse> instance

Provides a list of custom vocabularies that match the specified
criteria. If no criteria are specified, all custom vocabularies are
returned.

To get detailed information about a specific custom vocabulary, use the
operation.


=head2 ListVocabularyFilters

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListVocabularyFilters>

Returns: a L<Paws::Transcribe::ListVocabularyFiltersResponse> instance

Provides a list of custom vocabulary filters that match the specified
criteria. If no criteria are specified, all custom vocabularies are
returned.

To get detailed information about a specific custom vocabulary filter,
use the operation.


=head2 StartCallAnalyticsJob

=over

=item CallAnalyticsJobName => Str

=item Media => L<Paws::Transcribe::Media>

=item [ChannelDefinitions => ArrayRef[L<Paws::Transcribe::ChannelDefinition>]]

=item [DataAccessRoleArn => Str]

=item [OutputEncryptionKMSKeyId => Str]

=item [OutputLocation => Str]

=item [Settings => L<Paws::Transcribe::CallAnalyticsJobSettings>]

=item [Tags => ArrayRef[L<Paws::Transcribe::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transcribe::StartCallAnalyticsJob>

Returns: a L<Paws::Transcribe::StartCallAnalyticsJobResponse> instance

Transcribes the audio from a customer service call and applies any
additional Request Parameters you choose to include in your request.

In addition to many standard transcription features, Call Analytics
provides you with call characteristics, call summarization, speaker
sentiment, and optional redaction of your text transcript and your
audio file. You can also apply custom categories to flag specified
conditions. To learn more about these features and insights, refer to
Analyzing call center audio with Call Analytics
(https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html).

If you want to apply categories to your Call Analytics job, you must
create them before submitting your job request. Categories cannot be
retroactively applied to a job. To create a new category, use the
operation. To learn more about Call Analytics categories, see Creating
categories for post-call transcriptions
(https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html)
and Creating categories for real-time transcriptions
(https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html).

To make a C<StartCallAnalyticsJob> request, you must first upload your
media file into an Amazon S3 bucket; you can then specify the Amazon S3
location of the file using the C<Media> parameter.

Job queuing is available for Call Analytics jobs. If you pass a
C<DataAccessRoleArn> in your request and you exceed your Concurrent Job
Limit, your job will automatically be added to a queue to be processed
once your concurrent job count is below the limit.

You must include the following parameters in your
C<StartCallAnalyticsJob> request:

=over

=item *

C<region>: The Amazon Web Services Region where you are making your
request. For a list of Amazon Web Services Regions supported with
Amazon Transcribe, refer to Amazon Transcribe endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/transcribe.html).

=item *

C<CallAnalyticsJobName>: A custom name that you create for your
transcription job that's unique within your Amazon Web Services
account.

=item *

C<Media> (C<MediaFileUri> or C<RedactedMediaFileUri>): The Amazon S3
location of your media file.

=back

With Call Analytics, you can redact the audio contained in your media
file by including C<RedactedMediaFileUri>, instead of C<MediaFileUri>,
to specify the location of your input audio. If you choose to redact
your audio, you can find your redacted media at the location specified
in the C<RedactedMediaFileUri> field of your response.


=head2 StartMedicalScribeJob

=over

=item DataAccessRoleArn => Str

=item Media => L<Paws::Transcribe::Media>

=item MedicalScribeJobName => Str

=item OutputBucketName => Str

=item Settings => L<Paws::Transcribe::MedicalScribeSettings>

=item [ChannelDefinitions => ArrayRef[L<Paws::Transcribe::MedicalScribeChannelDefinition>]]

=item [KMSEncryptionContext => L<Paws::Transcribe::KMSEncryptionContextMap>]

=item [OutputEncryptionKMSKeyId => Str]

=item [Tags => ArrayRef[L<Paws::Transcribe::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transcribe::StartMedicalScribeJob>

Returns: a L<Paws::Transcribe::StartMedicalScribeJobResponse> instance

Transcribes patient-clinician conversations and generates clinical
notes.

Amazon Web Services HealthScribe automatically provides rich
conversation transcripts, identifies speaker roles, classifies
dialogues, extracts medical terms, and generates preliminary clinical
notes. To learn more about these features, refer to Amazon Web Services
HealthScribe
(https://docs.aws.amazon.com/transcribe/latest/dg/health-scribe.html).

To make a C<StartMedicalScribeJob> request, you must first upload your
media file into an Amazon S3 bucket; you can then specify the Amazon S3
location of the file using the C<Media> parameter.

You must include the following parameters in your
C<StartMedicalTranscriptionJob> request:

=over

=item *

C<DataAccessRoleArn>: The ARN of an IAM role with the these minimum
permissions: read permission on input file Amazon S3 bucket specified
in C<Media>, write permission on the Amazon S3 bucket specified in
C<OutputBucketName>, and full permissions on the KMS key specified in
C<OutputEncryptionKMSKeyId> (if set). The role should also allow
C<transcribe.amazonaws.com> to assume it.

=item *

C<Media> (C<MediaFileUri>): The Amazon S3 location of your media file.

=item *

C<MedicalScribeJobName>: A custom name you create for your
MedicalScribe job that is unique within your Amazon Web Services
account.

=item *

C<OutputBucketName>: The Amazon S3 bucket where you want your output
files stored.

=item *

C<Settings>: A C<MedicalScribeSettings> obect that must set exactly one
of C<ShowSpeakerLabels> or C<ChannelIdentification> to true. If
C<ShowSpeakerLabels> is true, C<MaxSpeakerLabels> must also be set.

=item *

C<ChannelDefinitions>: A C<MedicalScribeChannelDefinitions> array
should be set if and only if the C<ChannelIdentification> value of
C<Settings> is set to true.

=back



=head2 StartMedicalTranscriptionJob

=over

=item LanguageCode => Str

=item Media => L<Paws::Transcribe::Media>

=item MedicalTranscriptionJobName => Str

=item OutputBucketName => Str

=item Specialty => Str

=item Type => Str

=item [ContentIdentificationType => Str]

=item [KMSEncryptionContext => L<Paws::Transcribe::KMSEncryptionContextMap>]

=item [MediaFormat => Str]

=item [MediaSampleRateHertz => Int]

=item [OutputEncryptionKMSKeyId => Str]

=item [OutputKey => Str]

=item [Settings => L<Paws::Transcribe::MedicalTranscriptionSetting>]

=item [Tags => ArrayRef[L<Paws::Transcribe::Tag>]]


=back

Each argument is described in detail in: L<Paws::Transcribe::StartMedicalTranscriptionJob>

Returns: a L<Paws::Transcribe::StartMedicalTranscriptionJobResponse> instance

Transcribes the audio from a medical dictation or conversation and
applies any additional Request Parameters you choose to include in your
request.

In addition to many standard transcription features, Amazon Transcribe
Medical provides you with a robust medical vocabulary and, optionally,
content identification, which adds flags to personal health information
(PHI). To learn more about these features, refer to How Amazon
Transcribe Medical works
(https://docs.aws.amazon.com/transcribe/latest/dg/how-it-works-med.html).

To make a C<StartMedicalTranscriptionJob> request, you must first
upload your media file into an Amazon S3 bucket; you can then specify
the Amazon S3 location of the file using the C<Media> parameter.

You must include the following parameters in your
C<StartMedicalTranscriptionJob> request:

=over

=item *

C<region>: The Amazon Web Services Region where you are making your
request. For a list of Amazon Web Services Regions supported with
Amazon Transcribe, refer to Amazon Transcribe endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/transcribe.html).

=item *

C<MedicalTranscriptionJobName>: A custom name you create for your
transcription job that is unique within your Amazon Web Services
account.

=item *

C<Media> (C<MediaFileUri>): The Amazon S3 location of your media file.

=item *

C<LanguageCode>: This must be C<en-US>.

=item *

C<OutputBucketName>: The Amazon S3 bucket where you want your
transcript stored. If you want your output stored in a sub-folder of
this bucket, you must also include C<OutputKey>.

=item *

C<Specialty>: This must be C<PRIMARYCARE>.

=item *

C<Type>: Choose whether your audio is a conversation or a dictation.

=back



=head2 StartTranscriptionJob

=over

=item Media => L<Paws::Transcribe::Media>

=item TranscriptionJobName => Str

=item [ContentRedaction => L<Paws::Transcribe::ContentRedaction>]

=item [IdentifyLanguage => Bool]

=item [IdentifyMultipleLanguages => Bool]

=item [JobExecutionSettings => L<Paws::Transcribe::JobExecutionSettings>]

=item [KMSEncryptionContext => L<Paws::Transcribe::KMSEncryptionContextMap>]

=item [LanguageCode => Str]

=item [LanguageIdSettings => L<Paws::Transcribe::LanguageIdSettingsMap>]

=item [LanguageOptions => ArrayRef[Str|Undef]]

=item [MediaFormat => Str]

=item [MediaSampleRateHertz => Int]

=item [ModelSettings => L<Paws::Transcribe::ModelSettings>]

=item [OutputBucketName => Str]

=item [OutputEncryptionKMSKeyId => Str]

=item [OutputKey => Str]

=item [Settings => L<Paws::Transcribe::Settings>]

=item [Subtitles => L<Paws::Transcribe::Subtitles>]

=item [Tags => ArrayRef[L<Paws::Transcribe::Tag>]]

=item [ToxicityDetection => ArrayRef[L<Paws::Transcribe::ToxicityDetectionSettings>]]


=back

Each argument is described in detail in: L<Paws::Transcribe::StartTranscriptionJob>

Returns: a L<Paws::Transcribe::StartTranscriptionJobResponse> instance

Transcribes the audio from a media file and applies any additional
Request Parameters you choose to include in your request.

To make a C<StartTranscriptionJob> request, you must first upload your
media file into an Amazon S3 bucket; you can then specify the Amazon S3
location of the file using the C<Media> parameter.

You must include the following parameters in your
C<StartTranscriptionJob> request:

=over

=item *

C<region>: The Amazon Web Services Region where you are making your
request. For a list of Amazon Web Services Regions supported with
Amazon Transcribe, refer to Amazon Transcribe endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/transcribe.html).

=item *

C<TranscriptionJobName>: A custom name you create for your
transcription job that is unique within your Amazon Web Services
account.

=item *

C<Media> (C<MediaFileUri>): The Amazon S3 location of your media file.

=item *

One of C<LanguageCode>, C<IdentifyLanguage>, or
C<IdentifyMultipleLanguages>: If you know the language of your media
file, specify it using the C<LanguageCode> parameter; you can find all
valid language codes in the Supported languages
(https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html)
table. If you do not know the languages spoken in your media, use
either C<IdentifyLanguage> or C<IdentifyMultipleLanguages> and let
Amazon Transcribe identify the languages for you.

=back



=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Transcribe::Tag>]


=back

Each argument is described in detail in: L<Paws::Transcribe::TagResource>

Returns: a L<Paws::Transcribe::TagResourceResponse> instance

Adds one or more custom tags, each in the form of a key:value pair, to
the specified resource.

To learn more about using tags with Amazon Transcribe, refer to Tagging
resources
(https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Transcribe::UntagResource>

Returns: a L<Paws::Transcribe::UntagResourceResponse> instance

Removes the specified tags from the specified Amazon Transcribe
resource.

If you include C<UntagResource> in your request, you must also include
C<ResourceArn> and C<TagKeys>.


=head2 UpdateCallAnalyticsCategory

=over

=item CategoryName => Str

=item Rules => ArrayRef[L<Paws::Transcribe::Rule>]

=item [InputType => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::UpdateCallAnalyticsCategory>

Returns: a L<Paws::Transcribe::UpdateCallAnalyticsCategoryResponse> instance

Updates the specified Call Analytics category with new rules. Note that
the C<UpdateCallAnalyticsCategory> operation overwrites all existing
rules contained in the specified category. You cannot append additional
rules onto an existing category.

To create a new category, see .


=head2 UpdateMedicalVocabulary

=over

=item LanguageCode => Str

=item VocabularyFileUri => Str

=item VocabularyName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::UpdateMedicalVocabulary>

Returns: a L<Paws::Transcribe::UpdateMedicalVocabularyResponse> instance

Updates an existing custom medical vocabulary with new values. This
operation overwrites all existing information with your new values; you
cannot append new terms onto an existing custom vocabulary.


=head2 UpdateVocabulary

=over

=item LanguageCode => Str

=item VocabularyName => Str

=item [DataAccessRoleArn => Str]

=item [Phrases => ArrayRef[Str|Undef]]

=item [VocabularyFileUri => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::UpdateVocabulary>

Returns: a L<Paws::Transcribe::UpdateVocabularyResponse> instance

Updates an existing custom vocabulary with new values. This operation
overwrites all existing information with your new values; you cannot
append new terms onto an existing custom vocabulary.


=head2 UpdateVocabularyFilter

=over

=item VocabularyFilterName => Str

=item [DataAccessRoleArn => Str]

=item [VocabularyFilterFileUri => Str]

=item [Words => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Transcribe::UpdateVocabularyFilter>

Returns: a L<Paws::Transcribe::UpdateVocabularyFilterResponse> instance

Updates an existing custom vocabulary filter with a new list of words.
The new list you provide overwrites all previous entries; you cannot
append new terms onto an existing custom vocabulary filter.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::Translate;
  use Moose;
  sub service { 'translate' }
  sub signing_name { 'translate' }
  sub version { '2017-07-01' }
  sub target_prefix { 'AWSShineFrontendService_20170701' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateParallelData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::CreateParallelData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteParallelData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::DeleteParallelData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTerminology {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::DeleteTerminology', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTextTranslationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::DescribeTextTranslationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetParallelData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::GetParallelData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTerminology {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::GetTerminology', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportTerminology {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::ImportTerminology', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLanguages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::ListLanguages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListParallelData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::ListParallelData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTerminologies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::ListTerminologies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTextTranslationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::ListTextTranslationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTextTranslationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::StartTextTranslationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTextTranslationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::StopTextTranslationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TranslateDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::TranslateDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TranslateText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::TranslateText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateParallelData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::UpdateParallelData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllTerminologies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTerminologies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTerminologies(@_, NextToken => $next_result->NextToken);
        push @{ $result->TerminologyPropertiesList }, @{ $next_result->TerminologyPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TerminologyPropertiesList') foreach (@{ $result->TerminologyPropertiesList });
        $result = $self->ListTerminologies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TerminologyPropertiesList') foreach (@{ $result->TerminologyPropertiesList });
    }

    return undef
  }


  sub operations { qw/CreateParallelData DeleteParallelData DeleteTerminology DescribeTextTranslationJob GetParallelData GetTerminology ImportTerminology ListLanguages ListParallelData ListTagsForResource ListTerminologies ListTextTranslationJobs StartTextTranslationJob StopTextTranslationJob TagResource TranslateDocument TranslateText UntagResource UpdateParallelData / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate - Perl Interface to AWS Amazon Translate

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Translate');
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

Provides translation of the input content from the source language to
the target language.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateParallelData

=over

=item ClientToken => Str

=item Name => Str

=item ParallelDataConfig => L<Paws::Translate::ParallelDataConfig>

=item [Description => Str]

=item [EncryptionKey => L<Paws::Translate::EncryptionKey>]

=item [Tags => ArrayRef[L<Paws::Translate::Tag>]]


=back

Each argument is described in detail in: L<Paws::Translate::CreateParallelData>

Returns: a L<Paws::Translate::CreateParallelDataResponse> instance

Creates a parallel data resource in Amazon Translate by importing an
input file from Amazon S3. Parallel data files contain examples that
show how you want segments of text to be translated. By adding parallel
data, you can influence the style, tone, and word choice in your
translation output.


=head2 DeleteParallelData

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Translate::DeleteParallelData>

Returns: a L<Paws::Translate::DeleteParallelDataResponse> instance

Deletes a parallel data resource in Amazon Translate.


=head2 DeleteTerminology

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Translate::DeleteTerminology>

Returns: nothing

A synchronous action that deletes a custom terminology.


=head2 DescribeTextTranslationJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Translate::DescribeTextTranslationJob>

Returns: a L<Paws::Translate::DescribeTextTranslationJobResponse> instance

Gets the properties associated with an asynchronous batch translation
job including name, ID, status, source and target languages,
input/output S3 buckets, and so on.


=head2 GetParallelData

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Translate::GetParallelData>

Returns: a L<Paws::Translate::GetParallelDataResponse> instance

Provides information about a parallel data resource.


=head2 GetTerminology

=over

=item Name => Str

=item [TerminologyDataFormat => Str]


=back

Each argument is described in detail in: L<Paws::Translate::GetTerminology>

Returns: a L<Paws::Translate::GetTerminologyResponse> instance

Retrieves a custom terminology.


=head2 ImportTerminology

=over

=item MergeStrategy => Str

=item Name => Str

=item TerminologyData => L<Paws::Translate::TerminologyData>

=item [Description => Str]

=item [EncryptionKey => L<Paws::Translate::EncryptionKey>]

=item [Tags => ArrayRef[L<Paws::Translate::Tag>]]


=back

Each argument is described in detail in: L<Paws::Translate::ImportTerminology>

Returns: a L<Paws::Translate::ImportTerminologyResponse> instance

Creates or updates a custom terminology, depending on whether one
already exists for the given terminology name. Importing a terminology
with the same name as an existing one will merge the terminologies
based on the chosen merge strategy. The only supported merge strategy
is OVERWRITE, where the imported terminology overwrites the existing
terminology of the same name.

If you import a terminology that overwrites an existing one, the new
terminology takes up to 10 minutes to fully propagate. After that,
translations have access to the new terminology.


=head2 ListLanguages

=over

=item [DisplayLanguageCode => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Translate::ListLanguages>

Returns: a L<Paws::Translate::ListLanguagesResponse> instance

Provides a list of languages (RFC-5646 codes and names) that Amazon
Translate supports.


=head2 ListParallelData

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Translate::ListParallelData>

Returns: a L<Paws::Translate::ListParallelDataResponse> instance

Provides a list of your parallel data resources in Amazon Translate.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Translate::ListTagsForResource>

Returns: a L<Paws::Translate::ListTagsForResourceResponse> instance

Lists all tags associated with a given Amazon Translate resource. For
more information, see Tagging your resources
(https://docs.aws.amazon.com/translate/latest/dg/tagging.html).


=head2 ListTerminologies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Translate::ListTerminologies>

Returns: a L<Paws::Translate::ListTerminologiesResponse> instance

Provides a list of custom terminologies associated with your account.


=head2 ListTextTranslationJobs

=over

=item [Filter => L<Paws::Translate::TextTranslationJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Translate::ListTextTranslationJobs>

Returns: a L<Paws::Translate::ListTextTranslationJobsResponse> instance

Gets a list of the batch translation jobs that you have submitted.


=head2 StartTextTranslationJob

=over

=item ClientToken => Str

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Translate::InputDataConfig>

=item OutputDataConfig => L<Paws::Translate::OutputDataConfig>

=item SourceLanguageCode => Str

=item TargetLanguageCodes => ArrayRef[Str|Undef]

=item [JobName => Str]

=item [ParallelDataNames => ArrayRef[Str|Undef]]

=item [Settings => L<Paws::Translate::TranslationSettings>]

=item [TerminologyNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Translate::StartTextTranslationJob>

Returns: a L<Paws::Translate::StartTextTranslationJobResponse> instance

Starts an asynchronous batch translation job. Use batch translation
jobs to translate large volumes of text across multiple documents at
once. For batch translation, you can input documents with different
source languages (specify C<auto> as the source language). You can
specify one or more target languages. Batch translation translates each
input document into each of the target languages. For more information,
see Asynchronous batch processing
(https://docs.aws.amazon.com/translate/latest/dg/async.html).

Batch translation jobs can be described with the
DescribeTextTranslationJob operation, listed with the
ListTextTranslationJobs operation, and stopped with the
StopTextTranslationJob operation.


=head2 StopTextTranslationJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Translate::StopTextTranslationJob>

Returns: a L<Paws::Translate::StopTextTranslationJobResponse> instance

Stops an asynchronous batch translation job that is in progress.

If the job's state is C<IN_PROGRESS>, the job will be marked for
termination and put into the C<STOP_REQUESTED> state. If the job
completes before it can be stopped, it is put into the C<COMPLETED>
state. Otherwise, the job is put into the C<STOPPED> state.

Asynchronous batch translation jobs are started with the
StartTextTranslationJob operation. You can use the
DescribeTextTranslationJob or ListTextTranslationJobs operations to get
a batch translation job's C<JobId>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Translate::Tag>]


=back

Each argument is described in detail in: L<Paws::Translate::TagResource>

Returns: a L<Paws::Translate::TagResourceResponse> instance

Associates a specific tag with a resource. A tag is a key-value pair
that adds as a metadata to a resource. For more information, see
Tagging your resources
(https://docs.aws.amazon.com/translate/latest/dg/tagging.html).


=head2 TranslateDocument

=over

=item Document => L<Paws::Translate::Document>

=item SourceLanguageCode => Str

=item TargetLanguageCode => Str

=item [Settings => L<Paws::Translate::TranslationSettings>]

=item [TerminologyNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Translate::TranslateDocument>

Returns: a L<Paws::Translate::TranslateDocumentResponse> instance

Translates the input document from the source language to the target
language. This synchronous operation supports text, HTML, or Word
documents as the input document. C<TranslateDocument> supports
translations from English to any supported language, and from any
supported language to English. Therefore, specify either the source
language code or the target language code as E<ldquo>enE<rdquo>
(English).

If you set the C<Formality> parameter, the request will fail if the
target language does not support formality. For a list of target
languages that support formality, see Setting formality
(https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-formality.html).


=head2 TranslateText

=over

=item SourceLanguageCode => Str

=item TargetLanguageCode => Str

=item Text => Str

=item [Settings => L<Paws::Translate::TranslationSettings>]

=item [TerminologyNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Translate::TranslateText>

Returns: a L<Paws::Translate::TranslateTextResponse> instance

Translates input text from the source language to the target language.
For a list of available languages and language codes, see Supported
languages
(https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Translate::UntagResource>

Returns: a L<Paws::Translate::UntagResourceResponse> instance

Removes a specific tag associated with an Amazon Translate resource.
For more information, see Tagging your resources
(https://docs.aws.amazon.com/translate/latest/dg/tagging.html).


=head2 UpdateParallelData

=over

=item ClientToken => Str

=item Name => Str

=item ParallelDataConfig => L<Paws::Translate::ParallelDataConfig>

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Translate::UpdateParallelData>

Returns: a L<Paws::Translate::UpdateParallelDataResponse> instance

Updates a previously created parallel data resource by importing a new
input file from Amazon S3.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllTerminologies(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllTerminologies([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TerminologyPropertiesList, passing the object as the first parameter, and the string 'TerminologyPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Translate::ListTerminologiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


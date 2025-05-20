
package Paws::Transcribe::CreateCallAnalyticsCategory;
  use Moose;
  has CategoryName => (is => 'ro', isa => 'Str', required => 1);
  has InputType => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Rule]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCallAnalyticsCategory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::CreateCallAnalyticsCategoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::CreateCallAnalyticsCategory - Arguments for method CreateCallAnalyticsCategory on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCallAnalyticsCategory on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method CreateCallAnalyticsCategory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCallAnalyticsCategory.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $CreateCallAnalyticsCategoryResponse =
      $transcribe->CreateCallAnalyticsCategory(
      CategoryName => 'MyCategoryName',
      Rules        => [
        {
          InterruptionFilter => {
            AbsoluteTimeRange => {
              EndTime   => 1,    # max: 14400000; OPTIONAL
              First     => 1,    # max: 14400000; OPTIONAL
              Last      => 1,    # max: 14400000; OPTIONAL
              StartTime => 1,    # max: 14400000; OPTIONAL
            },    # OPTIONAL
            Negate            => 1,          # OPTIONAL
            ParticipantRole   => 'AGENT',    # values: AGENT, CUSTOMER; OPTIONAL
            RelativeTimeRange => {
              EndPercentage   => 1,          # max: 100; OPTIONAL
              First           => 1,          # max: 100; OPTIONAL
              Last            => 1,          # max: 100; OPTIONAL
              StartPercentage => 1,          # max: 100; OPTIONAL
            },    # OPTIONAL
            Threshold => 1,    # max: 14400000; OPTIONAL
          },    # OPTIONAL
          NonTalkTimeFilter => {
            AbsoluteTimeRange => {
              EndTime   => 1,    # max: 14400000; OPTIONAL
              First     => 1,    # max: 14400000; OPTIONAL
              Last      => 1,    # max: 14400000; OPTIONAL
              StartTime => 1,    # max: 14400000; OPTIONAL
            },    # OPTIONAL
            Negate            => 1,    # OPTIONAL
            RelativeTimeRange => {
              EndPercentage   => 1,    # max: 100; OPTIONAL
              First           => 1,    # max: 100; OPTIONAL
              Last            => 1,    # max: 100; OPTIONAL
              StartPercentage => 1,    # max: 100; OPTIONAL
            },    # OPTIONAL
            Threshold => 1,    # max: 14400000; OPTIONAL
          },    # OPTIONAL
          SentimentFilter => {
            Sentiments => [
              'POSITIVE', ...    # values: POSITIVE, NEGATIVE, NEUTRAL, MIXED
            ],    # min: 1, max: 1
            AbsoluteTimeRange => {
              EndTime   => 1,    # max: 14400000; OPTIONAL
              First     => 1,    # max: 14400000; OPTIONAL
              Last      => 1,    # max: 14400000; OPTIONAL
              StartTime => 1,    # max: 14400000; OPTIONAL
            },    # OPTIONAL
            Negate            => 1,          # OPTIONAL
            ParticipantRole   => 'AGENT',    # values: AGENT, CUSTOMER; OPTIONAL
            RelativeTimeRange => {
              EndPercentage   => 1,          # max: 100; OPTIONAL
              First           => 1,          # max: 100; OPTIONAL
              Last            => 1,          # max: 100; OPTIONAL
              StartPercentage => 1,          # max: 100; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          TranscriptFilter => {
            Targets => [
              'MyNonEmptyString', ...    # min: 1, max: 2000
            ],    # min: 1
            TranscriptFilterType => 'EXACT',    # values: EXACT
            AbsoluteTimeRange    => {
              EndTime   => 1,                   # max: 14400000; OPTIONAL
              First     => 1,                   # max: 14400000; OPTIONAL
              Last      => 1,                   # max: 14400000; OPTIONAL
              StartTime => 1,                   # max: 14400000; OPTIONAL
            },    # OPTIONAL
            Negate            => 1,          # OPTIONAL
            ParticipantRole   => 'AGENT',    # values: AGENT, CUSTOMER; OPTIONAL
            RelativeTimeRange => {
              EndPercentage   => 1,          # max: 100; OPTIONAL
              First           => 1,          # max: 100; OPTIONAL
              Last            => 1,          # max: 100; OPTIONAL
              StartPercentage => 1,          # max: 100; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      InputType => 'REAL_TIME',    # OPTIONAL
      Tags      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $CategoryProperties =
      $CreateCallAnalyticsCategoryResponse->CategoryProperties;

    # Returns a L<Paws::Transcribe::CreateCallAnalyticsCategoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/CreateCallAnalyticsCategory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CategoryName => Str

A unique name, chosen by you, for your Call Analytics category. It's
helpful to use a detailed naming system that will make sense to you in
the future. For example, it's better to use
C<sentiment-positive-last30seconds> for a category over a generic name
like C<test-category>.

Category names are case sensitive.



=head2 InputType => Str

Choose whether you want to create a real-time or a post-call category
for your Call Analytics transcription.

Specifying C<POST_CALL> assigns your category to post-call
transcriptions; categories with this input type cannot be applied to
streaming (real-time) transcriptions.

Specifying C<REAL_TIME> assigns your category to streaming
transcriptions; categories with this input type cannot be applied to
post-call transcriptions.

If you do not include C<InputType>, your category is created as a
post-call category by default.

Valid values are: C<"REAL_TIME">, C<"POST_CALL">

=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::Transcribe::Rule>]

Rules define a Call Analytics category. When creating a new category,
you must create between 1 and 20 rules for that category. For each
rule, you specify a filter you want applied to the attributes of a
call. For example, you can choose a sentiment filter that detects if a
customer's sentiment was positive during the last 30 seconds of the
call.



=head2 Tags => ArrayRef[L<Paws::Transcribe::Tag>]

Adds one or more custom tags, each in the form of a key:value pair, to
a new call analytics category at the time you start this new job.

To learn more about using tags with Amazon Transcribe, refer to Tagging
resources
(https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCallAnalyticsCategory in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


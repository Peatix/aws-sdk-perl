
package Paws::Transcribe::UpdateCallAnalyticsCategory;
  use Moose;
  has CategoryName => (is => 'ro', isa => 'Str', required => 1);
  has InputType => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Rule]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCallAnalyticsCategory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::UpdateCallAnalyticsCategoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::UpdateCallAnalyticsCategory - Arguments for method UpdateCallAnalyticsCategory on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCallAnalyticsCategory on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method UpdateCallAnalyticsCategory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCallAnalyticsCategory.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $UpdateCallAnalyticsCategoryResponse =
      $transcribe->UpdateCallAnalyticsCategory(
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
      );

    # Results:
    my $CategoryProperties =
      $UpdateCallAnalyticsCategoryResponse->CategoryProperties;

    # Returns a L<Paws::Transcribe::UpdateCallAnalyticsCategoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/UpdateCallAnalyticsCategory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CategoryName => Str

The name of the Call Analytics category you want to update. Category
names are case sensitive.



=head2 InputType => Str

Choose whether you want to update a real-time or a post-call category.
The input type you specify must match the input type specified when the
category was created. For example, if you created a category with the
C<POST_CALL> input type, you must use C<POST_CALL> as the input type
when updating this category.

Valid values are: C<"REAL_TIME">, C<"POST_CALL">

=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::Transcribe::Rule>]

The rules used for the updated Call Analytics category. The rules you
provide in this field replace the ones that are currently being used in
the specified category.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCallAnalyticsCategory in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


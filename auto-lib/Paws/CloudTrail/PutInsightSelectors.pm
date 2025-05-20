
package Paws::CloudTrail::PutInsightSelectors;
  use Moose;
  has EventDataStore => (is => 'ro', isa => 'Str');
  has InsightsDestination => (is => 'ro', isa => 'Str');
  has InsightSelectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::InsightSelector]', required => 1);
  has TrailName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutInsightSelectors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::PutInsightSelectorsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::PutInsightSelectors - Arguments for method PutInsightSelectors on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutInsightSelectors on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method PutInsightSelectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutInsightSelectors.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $PutInsightSelectorsResponse = $cloudtrail->PutInsightSelectors(
      InsightSelectors => [
        {
          InsightType => 'ApiCallRateInsight'
          ,    # values: ApiCallRateInsight, ApiErrorRateInsight; OPTIONAL
        },
        ...
      ],
      EventDataStore      => 'MyEventDataStoreArn',    # OPTIONAL
      InsightsDestination => 'MyEventDataStoreArn',    # OPTIONAL
      TrailName           => 'MyString',               # OPTIONAL
    );

    # Results:
    my $EventDataStoreArn   = $PutInsightSelectorsResponse->EventDataStoreArn;
    my $InsightSelectors    = $PutInsightSelectorsResponse->InsightSelectors;
    my $InsightsDestination = $PutInsightSelectorsResponse->InsightsDestination;
    my $TrailARN            = $PutInsightSelectorsResponse->TrailARN;

    # Returns a L<Paws::CloudTrail::PutInsightSelectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/PutInsightSelectors>

=head1 ATTRIBUTES


=head2 EventDataStore => Str

The ARN (or ID suffix of the ARN) of the source event data store for
which you want to change or add Insights selectors. To enable Insights
on an event data store, you must provide both the C<EventDataStore> and
C<InsightsDestination> parameters.

You cannot use this parameter with the C<TrailName> parameter.



=head2 InsightsDestination => Str

The ARN (or ID suffix of the ARN) of the destination event data store
that logs Insights events. To enable Insights on an event data store,
you must provide both the C<EventDataStore> and C<InsightsDestination>
parameters.

You cannot use this parameter with the C<TrailName> parameter.



=head2 B<REQUIRED> InsightSelectors => ArrayRef[L<Paws::CloudTrail::InsightSelector>]

A JSON string that contains the Insights types you want to log on a
trail or event data store. C<ApiCallRateInsight> and
C<ApiErrorRateInsight> are valid Insight types.

The C<ApiCallRateInsight> Insights type analyzes write-only management
API calls that are aggregated per minute against a baseline API call
volume.

The C<ApiErrorRateInsight> Insights type analyzes management API calls
that result in error codes. The error is shown if the API call is
unsuccessful.



=head2 TrailName => Str

The name of the CloudTrail trail for which you want to change or add
Insights selectors.

You cannot use this parameter with the C<EventDataStore> and
C<InsightsDestination> parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutInsightSelectors in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


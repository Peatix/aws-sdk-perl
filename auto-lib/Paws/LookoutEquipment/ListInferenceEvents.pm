
package Paws::LookoutEquipment::ListInferenceEvents;
  use Moose;
  has InferenceSchedulerName => (is => 'ro', isa => 'Str', required => 1);
  has IntervalEndTime => (is => 'ro', isa => 'Str', required => 1);
  has IntervalStartTime => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInferenceEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::ListInferenceEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListInferenceEvents - Arguments for method ListInferenceEvents on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInferenceEvents on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method ListInferenceEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInferenceEvents.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $ListInferenceEventsResponse = $lookoutequipment->ListInferenceEvents(
      InferenceSchedulerName => 'MyInferenceSchedulerIdentifier',
      IntervalEndTime        => '1970-01-01T01:00:00',
      IntervalStartTime      => '1970-01-01T01:00:00',
      MaxResults             => 1,                                  # OPTIONAL
      NextToken              => 'MyNextToken',                      # OPTIONAL
    );

    # Results:
    my $InferenceEventSummaries =
      $ListInferenceEventsResponse->InferenceEventSummaries;
    my $NextToken = $ListInferenceEventsResponse->NextToken;

    # Returns a L<Paws::LookoutEquipment::ListInferenceEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/ListInferenceEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InferenceSchedulerName => Str

The name of the inference scheduler for the inference events listed.



=head2 B<REQUIRED> IntervalEndTime => Str

Returns all the inference events with an end start time equal to or
greater than less than the end time given.



=head2 B<REQUIRED> IntervalStartTime => Str

Lookout for Equipment will return all the inference events with an end
time equal to or greater than the start time given.



=head2 MaxResults => Int

Specifies the maximum number of inference events to list.



=head2 NextToken => Str

An opaque pagination token indicating where to continue the listing of
inference events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInferenceEvents in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


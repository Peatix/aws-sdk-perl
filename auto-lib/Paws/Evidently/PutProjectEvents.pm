
package Paws::Evidently::PutProjectEvents;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::Event]', traits => ['NameInRequest'], request_name => 'events', required => 1);
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutProjectEvents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/events/projects/{project}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::PutProjectEventsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::PutProjectEvents - Arguments for method PutProjectEvents on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutProjectEvents on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method PutProjectEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutProjectEvents.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $PutProjectEventsResponse = $evidently->PutProjectEvents(
      Events => [
        {
          Data      => 'MyJsonValue',
          Timestamp => '1970-01-01T01:00:00',
          Type      => 'aws.evidently.evaluation'
          ,    # values: aws.evidently.evaluation, aws.evidently.custom

        },
        ...
      ],
      Project => 'MyProjectRef',

    );

    # Results:
    my $EventResults     = $PutProjectEventsResponse->EventResults;
    my $FailedEventCount = $PutProjectEventsResponse->FailedEventCount;

    # Returns a L<Paws::Evidently::PutProjectEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/PutProjectEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[L<Paws::Evidently::Event>]

An array of event structures that contain the performance data that is
being sent to Evidently.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project to write the events to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutProjectEvents in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


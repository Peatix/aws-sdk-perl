
package Paws::PersonalizeEvents::PutActionInteractions;
  use Moose;
  has ActionInteractions => (is => 'ro', isa => 'ArrayRef[Paws::PersonalizeEvents::ActionInteraction]', traits => ['NameInRequest'], request_name => 'actionInteractions', required => 1);
  has TrackingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trackingId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutActionInteractions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/action-interactions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeEvents::PutActionInteractions - Arguments for method PutActionInteractions on L<Paws::PersonalizeEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutActionInteractions on the
L<Amazon Personalize Events|Paws::PersonalizeEvents> service. Use the attributes of this class
as arguments to method PutActionInteractions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutActionInteractions.

=head1 SYNOPSIS

    my $personalize-events = Paws->service('PersonalizeEvents');
    $personalize -events->PutActionInteractions(
      ActionInteractions => [
        {
          ActionId   => 'MyActionId',            # min: 1, max: 256
          EventType  => 'MyStringType',          # min: 1, max: 256
          SessionId  => 'MyStringType',          # min: 1, max: 256
          Timestamp  => '1970-01-01T01:00:00',
          EventId    => 'MyStringType',          # min: 1, max: 256
          Impression => [
            'MyActionId', ...                    # min: 1, max: 256
          ],    # min: 1, max: 25; OPTIONAL
          Properties =>
            'MyActionInteractionProperties',    # min: 1, max: 1024; OPTIONAL
          RecommendationId => 'MyRecommendationId', # min: 1, max: 40; OPTIONAL
          UserId           => 'MyUserId',           # min: 1, max: 256; OPTIONAL
        },
        ...
      ],
      TrackingId => 'MyStringType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize-events/PutActionInteractions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionInteractions => ArrayRef[L<Paws::PersonalizeEvents::ActionInteraction>]

A list of action interaction events from the session.



=head2 B<REQUIRED> TrackingId => Str

The ID of your action interaction event tracker. When you create an
Action interactions dataset, Amazon Personalize creates an action
interaction event tracker for you. For more information, see Action
interaction event tracker ID
(https://docs.aws.amazon.com/personalize/latest/dg/action-interaction-tracker-id.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutActionInteractions in L<Paws::PersonalizeEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


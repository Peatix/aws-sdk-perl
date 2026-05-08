package Paws::PersonalizeEvents;
  use Moose;
  sub service { 'personalize-events' }
  sub signing_name { 'personalize' }
  sub version { '2018-03-22' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub PutActionInteractions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PersonalizeEvents::PutActionInteractions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PersonalizeEvents::PutActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PersonalizeEvents::PutEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PersonalizeEvents::PutItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PersonalizeEvents::PutUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/PutActionInteractions PutActions PutEvents PutItems PutUsers / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeEvents - Perl Interface to AWS Amazon Personalize Events

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PersonalizeEvents');
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

Amazon Personalize can consume real-time user event data, such as
I<stream> or I<click> data, and use it for model training either alone
or combined with historical data. For more information see Recording
item interaction events
(https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 PutActionInteractions

=over

=item ActionInteractions => ArrayRef[L<Paws::PersonalizeEvents::ActionInteraction>]

=item TrackingId => Str


=back

Each argument is described in detail in: L<Paws::PersonalizeEvents::PutActionInteractions>

Returns: nothing

Records action interaction event data. An I<action interaction> event
is an interaction between a user and an I<action>. For example, a user
taking an action, such a enrolling in a membership program or
downloading your app.

For more information about recording action interactions, see Recording
action interaction events
(https://docs.aws.amazon.com/personalize/latest/dg/recording-action-interaction-events.html).
For more information about actions in an Actions dataset, see Actions
dataset
(https://docs.aws.amazon.com/personalize/latest/dg/actions-datasets.html).


=head2 PutActions

=over

=item Actions => ArrayRef[L<Paws::PersonalizeEvents::Action>]

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::PersonalizeEvents::PutActions>

Returns: nothing

Adds one or more actions to an Actions dataset. For more information
see Importing actions individually
(https://docs.aws.amazon.com/personalize/latest/dg/importing-actions.html).


=head2 PutEvents

=over

=item EventList => ArrayRef[L<Paws::PersonalizeEvents::Event>]

=item SessionId => Str

=item TrackingId => Str

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::PersonalizeEvents::PutEvents>

Returns: nothing

Records item interaction event data. For more information see Recording
item interaction events
(https://docs.aws.amazon.com/personalize/latest/dg/recording-item-interaction-events.html).


=head2 PutItems

=over

=item DatasetArn => Str

=item Items => ArrayRef[L<Paws::PersonalizeEvents::Item>]


=back

Each argument is described in detail in: L<Paws::PersonalizeEvents::PutItems>

Returns: nothing

Adds one or more items to an Items dataset. For more information see
Importing items individually
(https://docs.aws.amazon.com/personalize/latest/dg/importing-items.html).


=head2 PutUsers

=over

=item DatasetArn => Str

=item Users => ArrayRef[L<Paws::PersonalizeEvents::User>]


=back

Each argument is described in detail in: L<Paws::PersonalizeEvents::PutUsers>

Returns: nothing

Adds one or more users to a Users dataset. For more information see
Importing users individually
(https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


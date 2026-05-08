package Paws::Evidently;
  use Moose;
  sub service { 'evidently' }
  sub signing_name { 'evidently' }
  sub version { '2021-02-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchEvaluateFeature {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::BatchEvaluateFeature', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::CreateExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFeature {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::CreateFeature', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLaunch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::CreateLaunch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::CreateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSegment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::CreateSegment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::DeleteExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFeature {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::DeleteFeature', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLaunch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::DeleteLaunch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::DeleteProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSegment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::DeleteSegment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EvaluateFeature {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::EvaluateFeature', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::GetExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExperimentResults {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::GetExperimentResults', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFeature {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::GetFeature', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLaunch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::GetLaunch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::GetProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSegment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::GetSegment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExperiments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::ListExperiments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFeatures {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::ListFeatures', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLaunches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::ListLaunches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::ListProjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSegmentReferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::ListSegmentReferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSegments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::ListSegments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutProjectEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::PutProjectEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::StartExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartLaunch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::StartLaunch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::StopExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopLaunch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::StopLaunch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TestSegmentPattern {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::TestSegmentPattern', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExperiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::UpdateExperiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFeature {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::UpdateFeature', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLaunch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::UpdateLaunch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::UpdateProject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateProjectDataDelivery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Evidently::UpdateProjectDataDelivery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllExperiments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExperiments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExperiments(@_, nextToken => $next_result->nextToken);
        push @{ $result->experiments }, @{ $next_result->experiments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'experiments') foreach (@{ $result->experiments });
        $result = $self->ListExperiments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'experiments') foreach (@{ $result->experiments });
    }

    return undef
  }
  sub ListAllFeatures {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFeatures(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFeatures(@_, nextToken => $next_result->nextToken);
        push @{ $result->features }, @{ $next_result->features };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'features') foreach (@{ $result->features });
        $result = $self->ListFeatures(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'features') foreach (@{ $result->features });
    }

    return undef
  }
  sub ListAllLaunches {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLaunches(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLaunches(@_, nextToken => $next_result->nextToken);
        push @{ $result->launches }, @{ $next_result->launches };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'launches') foreach (@{ $result->launches });
        $result = $self->ListLaunches(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'launches') foreach (@{ $result->launches });
    }

    return undef
  }
  sub ListAllProjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProjects(@_, nextToken => $next_result->nextToken);
        push @{ $result->projects }, @{ $next_result->projects };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'projects') foreach (@{ $result->projects });
        $result = $self->ListProjects(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'projects') foreach (@{ $result->projects });
    }

    return undef
  }
  sub ListAllSegmentReferences {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSegmentReferences(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSegmentReferences(@_, nextToken => $next_result->nextToken);
        push @{ $result->referencedBy }, @{ $next_result->referencedBy };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'referencedBy') foreach (@{ $result->referencedBy });
        $result = $self->ListSegmentReferences(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'referencedBy') foreach (@{ $result->referencedBy });
    }

    return undef
  }
  sub ListAllSegments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSegments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSegments(@_, nextToken => $next_result->nextToken);
        push @{ $result->segments }, @{ $next_result->segments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'segments') foreach (@{ $result->segments });
        $result = $self->ListSegments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'segments') foreach (@{ $result->segments });
    }

    return undef
  }


  sub operations { qw/BatchEvaluateFeature CreateExperiment CreateFeature CreateLaunch CreateProject CreateSegment DeleteExperiment DeleteFeature DeleteLaunch DeleteProject DeleteSegment EvaluateFeature GetExperiment GetExperimentResults GetFeature GetLaunch GetProject GetSegment ListExperiments ListFeatures ListLaunches ListProjects ListSegmentReferences ListSegments ListTagsForResource PutProjectEvents StartExperiment StartLaunch StopExperiment StopLaunch TagResource TestSegmentPattern UntagResource UpdateExperiment UpdateFeature UpdateLaunch UpdateProject UpdateProjectDataDelivery / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently - Perl Interface to AWS Amazon CloudWatch Evidently

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Evidently');
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

You can use Amazon CloudWatch Evidently to safely validate new features
by serving them to a specified percentage of your users while you roll
out the feature. You can monitor the performance of the new feature to
help you decide when to ramp up traffic to your users. This helps you
reduce risk and identify unintended consequences before you fully
launch the feature.

You can also conduct A/B experiments to make feature design decisions
based on evidence and data. An experiment can test as many as five
variations at once. Evidently collects experiment data and analyzes it
using statistical methods. It also provides clear recommendations about
which variations perform better. You can test both user-facing features
and backend features.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently-2021-02-01>


=head1 METHODS

=head2 BatchEvaluateFeature

=over

=item Project => Str

=item Requests => ArrayRef[L<Paws::Evidently::EvaluationRequest>]


=back

Each argument is described in detail in: L<Paws::Evidently::BatchEvaluateFeature>

Returns: a L<Paws::Evidently::BatchEvaluateFeatureResponse> instance

This operation assigns feature variation to user sessions. For each
user session, you pass in an C<entityID> that represents the user.
Evidently then checks the evaluation rules and assigns the variation.

The first rules that are evaluated are the override rules. If the
user's C<entityID> matches an override rule, the user is served the
variation specified by that rule.

Next, if there is a launch of the feature, the user might be assigned
to a variation in the launch. The chance of this depends on the
percentage of users that are allocated to that launch. If the user is
enrolled in the launch, the variation they are served depends on the
allocation of the various feature variations used for the launch.

If the user is not assigned to a launch, and there is an ongoing
experiment for this feature, the user might be assigned to a variation
in the experiment. The chance of this depends on the percentage of
users that are allocated to that experiment. If the user is enrolled in
the experiment, the variation they are served depends on the allocation
of the various feature variations used for the experiment.

If the user is not assigned to a launch or experiment, they are served
the default variation.


=head2 CreateExperiment

=over

=item MetricGoals => ArrayRef[L<Paws::Evidently::MetricGoalConfig>]

=item Name => Str

=item Project => Str

=item Treatments => ArrayRef[L<Paws::Evidently::TreatmentConfig>]

=item [Description => Str]

=item [OnlineAbConfig => L<Paws::Evidently::OnlineAbConfig>]

=item [RandomizationSalt => Str]

=item [SamplingRate => Int]

=item [Segment => Str]

=item [Tags => L<Paws::Evidently::TagMap>]


=back

Each argument is described in detail in: L<Paws::Evidently::CreateExperiment>

Returns: a L<Paws::Evidently::CreateExperimentResponse> instance

Creates an Evidently I<experiment>. Before you create an experiment,
you must create the feature to use for the experiment.

An experiment helps you make feature design decisions based on evidence
and data. An experiment can test as many as five variations at once.
Evidently collects experiment data and analyzes it by statistical
methods, and provides clear recommendations about which variations
perform better.

You can optionally specify a C<segment> to have the experiment consider
only certain audience types in the experiment, such as using only user
sessions from a certain location or who use a certain internet browser.

Don't use this operation to update an existing experiment. Instead, use
UpdateExperiment
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateExperiment.html).


=head2 CreateFeature

=over

=item Name => Str

=item Project => Str

=item Variations => ArrayRef[L<Paws::Evidently::VariationConfig>]

=item [DefaultVariation => Str]

=item [Description => Str]

=item [EntityOverrides => L<Paws::Evidently::EntityOverrideMap>]

=item [EvaluationStrategy => Str]

=item [Tags => L<Paws::Evidently::TagMap>]


=back

Each argument is described in detail in: L<Paws::Evidently::CreateFeature>

Returns: a L<Paws::Evidently::CreateFeatureResponse> instance

Creates an Evidently I<feature> that you want to launch or test. You
can define up to five variations of a feature, and use these variations
in your launches and experiments. A feature must be created in a
project. For information about creating a project, see CreateProject
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html).

Don't use this operation to update an existing feature. Instead, use
UpdateFeature
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateFeature.html).


=head2 CreateLaunch

=over

=item Groups => ArrayRef[L<Paws::Evidently::LaunchGroupConfig>]

=item Name => Str

=item Project => Str

=item [Description => Str]

=item [MetricMonitors => ArrayRef[L<Paws::Evidently::MetricMonitorConfig>]]

=item [RandomizationSalt => Str]

=item [ScheduledSplitsConfig => L<Paws::Evidently::ScheduledSplitsLaunchConfig>]

=item [Tags => L<Paws::Evidently::TagMap>]


=back

Each argument is described in detail in: L<Paws::Evidently::CreateLaunch>

Returns: a L<Paws::Evidently::CreateLaunchResponse> instance

Creates a I<launch> of a given feature. Before you create a launch, you
must create the feature to use for the launch.

You can use a launch to safely validate new features by serving them to
a specified percentage of your users while you roll out the feature.
You can monitor the performance of the new feature to help you decide
when to ramp up traffic to more users. This helps you reduce risk and
identify unintended consequences before you fully launch the feature.

Don't use this operation to update an existing launch. Instead, use
UpdateLaunch
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateLaunch.html).


=head2 CreateProject

=over

=item Name => Str

=item [AppConfigResource => L<Paws::Evidently::ProjectAppConfigResourceConfig>]

=item [DataDelivery => L<Paws::Evidently::ProjectDataDeliveryConfig>]

=item [Description => Str]

=item [Tags => L<Paws::Evidently::TagMap>]


=back

Each argument is described in detail in: L<Paws::Evidently::CreateProject>

Returns: a L<Paws::Evidently::CreateProjectResponse> instance

Creates a project, which is the logical object in Evidently that can
contain features, launches, and experiments. Use projects to group
similar features together.

To update an existing project, use UpdateProject
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProject.html).


=head2 CreateSegment

=over

=item Name => Str

=item Pattern => Str

=item [Description => Str]

=item [Tags => L<Paws::Evidently::TagMap>]


=back

Each argument is described in detail in: L<Paws::Evidently::CreateSegment>

Returns: a L<Paws::Evidently::CreateSegmentResponse> instance

Use this operation to define a I<segment> of your audience. A segment
is a portion of your audience that share one or more characteristics.
Examples could be Chrome browser users, users in Europe, or Firefox
browser users in Europe who also fit other criteria that your
application collects, such as age.

Using a segment in an experiment limits that experiment to evaluate
only the users who match the segment criteria. Using one or more
segments in a launch allows you to define different traffic splits for
the different audience segments.

For more information about segment pattern syntax, see Segment rule
pattern syntax
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html#CloudWatch-Evidently-segments-syntax.html).

The pattern that you define for a segment is matched against the value
of C<evaluationContext>, which is passed into Evidently in the
EvaluateFeature
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html)
operation, when Evidently assigns a feature variation to a user.


=head2 DeleteExperiment

=over

=item Experiment => Str

=item Project => Str


=back

Each argument is described in detail in: L<Paws::Evidently::DeleteExperiment>

Returns: a L<Paws::Evidently::DeleteExperimentResponse> instance

Deletes an Evidently experiment. The feature used for the experiment is
not deleted.

To stop an experiment without deleting it, use StopExperiment
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopExperiment.html).


=head2 DeleteFeature

=over

=item Feature => Str

=item Project => Str


=back

Each argument is described in detail in: L<Paws::Evidently::DeleteFeature>

Returns: a L<Paws::Evidently::DeleteFeatureResponse> instance

Deletes an Evidently feature.


=head2 DeleteLaunch

=over

=item Launch => Str

=item Project => Str


=back

Each argument is described in detail in: L<Paws::Evidently::DeleteLaunch>

Returns: a L<Paws::Evidently::DeleteLaunchResponse> instance

Deletes an Evidently launch. The feature used for the launch is not
deleted.

To stop a launch without deleting it, use StopLaunch
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_StopLaunch.html).


=head2 DeleteProject

=over

=item Project => Str


=back

Each argument is described in detail in: L<Paws::Evidently::DeleteProject>

Returns: a L<Paws::Evidently::DeleteProjectResponse> instance

Deletes an Evidently project. Before you can delete a project, you must
delete all the features that the project contains. To delete a feature,
use DeleteFeature
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_DeleteFeature.html).


=head2 DeleteSegment

=over

=item Segment => Str


=back

Each argument is described in detail in: L<Paws::Evidently::DeleteSegment>

Returns: a L<Paws::Evidently::DeleteSegmentResponse> instance

Deletes a segment. You can't delete a segment that is being used in a
launch or experiment, even if that launch or experiment is not
currently running.


=head2 EvaluateFeature

=over

=item EntityId => Str

=item Feature => Str

=item Project => Str

=item [EvaluationContext => Str]


=back

Each argument is described in detail in: L<Paws::Evidently::EvaluateFeature>

Returns: a L<Paws::Evidently::EvaluateFeatureResponse> instance

This operation assigns a feature variation to one given user session.
You pass in an C<entityID> that represents the user. Evidently then
checks the evaluation rules and assigns the variation.

The first rules that are evaluated are the override rules. If the
user's C<entityID> matches an override rule, the user is served the
variation specified by that rule.

If there is a current launch with this feature that uses segment
overrides, and if the user session's C<evaluationContext> matches a
segment rule defined in a segment override, the configuration in the
segment overrides is used. For more information about segments, see
CreateSegment
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateSegment.html)
and Use segments to focus your audience
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-segments.html).

If there is a launch with no segment overrides, the user might be
assigned to a variation in the launch. The chance of this depends on
the percentage of users that are allocated to that launch. If the user
is enrolled in the launch, the variation they are served depends on the
allocation of the various feature variations used for the launch.

If the user is not assigned to a launch, and there is an ongoing
experiment for this feature, the user might be assigned to a variation
in the experiment. The chance of this depends on the percentage of
users that are allocated to that experiment.

If the experiment uses a segment, then only user sessions with
C<evaluationContext> values that match the segment rule are used in the
experiment.

If the user is enrolled in the experiment, the variation they are
served depends on the allocation of the various feature variations used
for the experiment.

If the user is not assigned to a launch or experiment, they are served
the default variation.


=head2 GetExperiment

=over

=item Experiment => Str

=item Project => Str


=back

Each argument is described in detail in: L<Paws::Evidently::GetExperiment>

Returns: a L<Paws::Evidently::GetExperimentResponse> instance

Returns the details about one experiment. You must already know the
experiment name. To retrieve a list of experiments in your account, use
ListExperiments
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListExperiments.html).


=head2 GetExperimentResults

=over

=item Experiment => Str

=item MetricNames => ArrayRef[Str|Undef]

=item Project => Str

=item TreatmentNames => ArrayRef[Str|Undef]

=item [BaseStat => Str]

=item [EndTime => Str]

=item [Period => Int]

=item [ReportNames => ArrayRef[Str|Undef]]

=item [ResultStats => ArrayRef[Str|Undef]]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::Evidently::GetExperimentResults>

Returns: a L<Paws::Evidently::GetExperimentResultsResponse> instance

Retrieves the results of a running or completed experiment. No results
are available until there have been 100 events for each variation and
at least 10 minutes have passed since the start of the experiment. To
increase the statistical power, Evidently performs an additional
offline p-value analysis at the end of the experiment. Offline p-value
analysis can detect statistical significance in some cases where the
anytime p-values used during the experiment do not find statistical
significance.

Experiment results are available up to 63 days after the start of the
experiment. They are not available after that because of CloudWatch
data retention policies.


=head2 GetFeature

=over

=item Feature => Str

=item Project => Str


=back

Each argument is described in detail in: L<Paws::Evidently::GetFeature>

Returns: a L<Paws::Evidently::GetFeatureResponse> instance

Returns the details about one feature. You must already know the
feature name. To retrieve a list of features in your account, use
ListFeatures
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListFeatures.html).


=head2 GetLaunch

=over

=item Launch => Str

=item Project => Str


=back

Each argument is described in detail in: L<Paws::Evidently::GetLaunch>

Returns: a L<Paws::Evidently::GetLaunchResponse> instance

Returns the details about one launch. You must already know the launch
name. To retrieve a list of launches in your account, use ListLaunches
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListLaunches.html).


=head2 GetProject

=over

=item Project => Str


=back

Each argument is described in detail in: L<Paws::Evidently::GetProject>

Returns: a L<Paws::Evidently::GetProjectResponse> instance

Returns the details about one launch. You must already know the project
name. To retrieve a list of projects in your account, use ListProjects
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_ListProjects.html).


=head2 GetSegment

=over

=item Segment => Str


=back

Each argument is described in detail in: L<Paws::Evidently::GetSegment>

Returns: a L<Paws::Evidently::GetSegmentResponse> instance

Returns information about the specified segment. Specify the segment
you want to view by specifying its ARN.


=head2 ListExperiments

=over

=item Project => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Evidently::ListExperiments>

Returns: a L<Paws::Evidently::ListExperimentsResponse> instance

Returns configuration details about all the experiments in the
specified project.


=head2 ListFeatures

=over

=item Project => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Evidently::ListFeatures>

Returns: a L<Paws::Evidently::ListFeaturesResponse> instance

Returns configuration details about all the features in the specified
project.


=head2 ListLaunches

=over

=item Project => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Evidently::ListLaunches>

Returns: a L<Paws::Evidently::ListLaunchesResponse> instance

Returns configuration details about all the launches in the specified
project.


=head2 ListProjects

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Evidently::ListProjects>

Returns: a L<Paws::Evidently::ListProjectsResponse> instance

Returns configuration details about all the projects in the current
Region in your account.


=head2 ListSegmentReferences

=over

=item Segment => Str

=item Type => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Evidently::ListSegmentReferences>

Returns: a L<Paws::Evidently::ListSegmentReferencesResponse> instance

Use this operation to find which experiments or launches are using a
specified segment.


=head2 ListSegments

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Evidently::ListSegments>

Returns: a L<Paws::Evidently::ListSegmentsResponse> instance

Returns a list of audience segments that you have created in your
account in this Region.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Evidently::ListTagsForResource>

Returns: a L<Paws::Evidently::ListTagsForResourceResponse> instance

Displays the tags associated with an Evidently resource.


=head2 PutProjectEvents

=over

=item Events => ArrayRef[L<Paws::Evidently::Event>]

=item Project => Str


=back

Each argument is described in detail in: L<Paws::Evidently::PutProjectEvents>

Returns: a L<Paws::Evidently::PutProjectEventsResponse> instance

Sends performance events to Evidently. These events can be used to
evaluate a launch or an experiment.


=head2 StartExperiment

=over

=item AnalysisCompleteTime => Str

=item Experiment => Str

=item Project => Str


=back

Each argument is described in detail in: L<Paws::Evidently::StartExperiment>

Returns: a L<Paws::Evidently::StartExperimentResponse> instance

Starts an existing experiment. To create an experiment, use
CreateExperiment
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateExperiment.html).


=head2 StartLaunch

=over

=item Launch => Str

=item Project => Str


=back

Each argument is described in detail in: L<Paws::Evidently::StartLaunch>

Returns: a L<Paws::Evidently::StartLaunchResponse> instance

Starts an existing launch. To create a launch, use CreateLaunch
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateLaunch.html).


=head2 StopExperiment

=over

=item Experiment => Str

=item Project => Str

=item [DesiredState => Str]

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::Evidently::StopExperiment>

Returns: a L<Paws::Evidently::StopExperimentResponse> instance

Stops an experiment that is currently running. If you stop an
experiment, you can't resume it or restart it.


=head2 StopLaunch

=over

=item Launch => Str

=item Project => Str

=item [DesiredState => Str]

=item [Reason => Str]


=back

Each argument is described in detail in: L<Paws::Evidently::StopLaunch>

Returns: a L<Paws::Evidently::StopLaunchResponse> instance

Stops a launch that is currently running. After you stop a launch, you
will not be able to resume it or restart it. Also, it will not be
evaluated as a rule for traffic allocation, and the traffic that was
allocated to the launch will instead be available to the feature's
experiment, if there is one. Otherwise, all traffic will be served the
default variation after the launch is stopped.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::Evidently::TagMap>


=back

Each argument is described in detail in: L<Paws::Evidently::TagResource>

Returns: a L<Paws::Evidently::TagResourceResponse> instance

Assigns one or more tags (key-value pairs) to the specified CloudWatch
Evidently resource. Projects, features, launches, and experiments can
be tagged.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can use the C<TagResource> action with a resource that already has
tags. If you specify a new tag key for the resource, this tag is
appended to the list of tags associated with the alarm. If you specify
a tag key that is already associated with the resource, the new tag
value that you specify replaces the previous value for that tag.

You can associate as many as 50 tags with a resource.

For more information, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).


=head2 TestSegmentPattern

=over

=item Pattern => Str

=item Payload => Str


=back

Each argument is described in detail in: L<Paws::Evidently::TestSegmentPattern>

Returns: a L<Paws::Evidently::TestSegmentPatternResponse> instance

Use this operation to test a rules pattern that you plan to use to
create an audience segment. For more information about segments, see
CreateSegment
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateSegment.html).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Evidently::UntagResource>

Returns: a L<Paws::Evidently::UntagResourceResponse> instance

Removes one or more tags from the specified resource.


=head2 UpdateExperiment

=over

=item Experiment => Str

=item Project => Str

=item [Description => Str]

=item [MetricGoals => ArrayRef[L<Paws::Evidently::MetricGoalConfig>]]

=item [OnlineAbConfig => L<Paws::Evidently::OnlineAbConfig>]

=item [RandomizationSalt => Str]

=item [RemoveSegment => Bool]

=item [SamplingRate => Int]

=item [Segment => Str]

=item [Treatments => ArrayRef[L<Paws::Evidently::TreatmentConfig>]]


=back

Each argument is described in detail in: L<Paws::Evidently::UpdateExperiment>

Returns: a L<Paws::Evidently::UpdateExperimentResponse> instance

Updates an Evidently experiment.

Don't use this operation to update an experiment's tag. Instead, use
TagResource
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html).


=head2 UpdateFeature

=over

=item Feature => Str

=item Project => Str

=item [AddOrUpdateVariations => ArrayRef[L<Paws::Evidently::VariationConfig>]]

=item [DefaultVariation => Str]

=item [Description => Str]

=item [EntityOverrides => L<Paws::Evidently::EntityOverrideMap>]

=item [EvaluationStrategy => Str]

=item [RemoveVariations => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Evidently::UpdateFeature>

Returns: a L<Paws::Evidently::UpdateFeatureResponse> instance

Updates an existing feature.

You can't use this operation to update the tags of an existing feature.
Instead, use TagResource
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html).


=head2 UpdateLaunch

=over

=item Launch => Str

=item Project => Str

=item [Description => Str]

=item [Groups => ArrayRef[L<Paws::Evidently::LaunchGroupConfig>]]

=item [MetricMonitors => ArrayRef[L<Paws::Evidently::MetricMonitorConfig>]]

=item [RandomizationSalt => Str]

=item [ScheduledSplitsConfig => L<Paws::Evidently::ScheduledSplitsLaunchConfig>]


=back

Each argument is described in detail in: L<Paws::Evidently::UpdateLaunch>

Returns: a L<Paws::Evidently::UpdateLaunchResponse> instance

Updates a launch of a given feature.

Don't use this operation to update the tags of an existing launch.
Instead, use TagResource
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html).


=head2 UpdateProject

=over

=item Project => Str

=item [AppConfigResource => L<Paws::Evidently::ProjectAppConfigResourceConfig>]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Evidently::UpdateProject>

Returns: a L<Paws::Evidently::UpdateProjectResponse> instance

Updates the description of an existing project.

To create a new project, use CreateProject
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_CreateProject.html).

Don't use this operation to update the data storage options of a
project. Instead, use UpdateProjectDataDelivery
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_UpdateProjectDataDelivery.html).

Don't use this operation to update the tags of a project. Instead, use
TagResource
(https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_TagResource.html).


=head2 UpdateProjectDataDelivery

=over

=item Project => Str

=item [CloudWatchLogs => L<Paws::Evidently::CloudWatchLogsDestinationConfig>]

=item [S3Destination => L<Paws::Evidently::S3DestinationConfig>]


=back

Each argument is described in detail in: L<Paws::Evidently::UpdateProjectDataDelivery>

Returns: a L<Paws::Evidently::UpdateProjectDataDeliveryResponse> instance

Updates the data storage options for this project. If you store
evaluation events, you an keep them and analyze them on your own. If
you choose not to store evaluation events, Evidently deletes them after
using them to produce metrics and other experiment results that you can
view.

You can't specify both C<cloudWatchLogs> and C<s3Destination> in the
same operation.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllExperiments(sub { },Project => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllExperiments(Project => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - experiments, passing the object as the first parameter, and the string 'experiments' as the second parameter 

If not, it will return a a L<Paws::Evidently::ListExperimentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFeatures(sub { },Project => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFeatures(Project => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - features, passing the object as the first parameter, and the string 'features' as the second parameter 

If not, it will return a a L<Paws::Evidently::ListFeaturesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLaunches(sub { },Project => Str, [MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllLaunches(Project => Str, [MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - launches, passing the object as the first parameter, and the string 'launches' as the second parameter 

If not, it will return a a L<Paws::Evidently::ListLaunchesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProjects(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllProjects([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - projects, passing the object as the first parameter, and the string 'projects' as the second parameter 

If not, it will return a a L<Paws::Evidently::ListProjectsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSegmentReferences(sub { },Segment => Str, Type => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllSegmentReferences(Segment => Str, Type => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - referencedBy, passing the object as the first parameter, and the string 'referencedBy' as the second parameter 

If not, it will return a a L<Paws::Evidently::ListSegmentReferencesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSegments(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSegments([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - segments, passing the object as the first parameter, and the string 'segments' as the second parameter 

If not, it will return a a L<Paws::Evidently::ListSegmentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


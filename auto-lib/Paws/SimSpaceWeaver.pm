package Paws::SimSpaceWeaver;
  use Moose;
  sub service { 'simspaceweaver' }
  sub signing_name { 'simspaceweaver' }
  sub version { '2022-10-28' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::CreateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::DeleteApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSimulation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::DeleteSimulation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::DescribeApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSimulation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::DescribeSimulation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApps {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::ListApps', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSimulations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::ListSimulations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::StartApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartClock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::StartClock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSimulation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::StartSimulation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopApp {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::StopApp', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopClock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::StopClock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopSimulation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::StopSimulation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SimSpaceWeaver::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateSnapshot DeleteApp DeleteSimulation DescribeApp DescribeSimulation ListApps ListSimulations ListTagsForResource StartApp StartClock StartSimulation StopApp StopClock StopSimulation TagResource UntagResource / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver - Perl Interface to AWS AWS SimSpace Weaver

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SimSpaceWeaver');
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

SimSpace Weaver (SimSpace Weaver) is a service that you can use to
build and run large-scale spatial simulations in the Amazon Web
Services Cloud. For example, you can create crowd simulations, large
real-world environments, and immersive and interactive experiences. For
more information about SimSpace Weaver, see the I< SimSpace Weaver User
Guide (https://docs.aws.amazon.com/simspaceweaver/latest/userguide/) >.

This API reference describes the API operations and data types that you
can use to communicate directly with SimSpace Weaver.

SimSpace Weaver also provides the SimSpace Weaver app SDK, which you
use for app development. The SimSpace Weaver app SDK API reference is
included in the SimSpace Weaver app SDK documentation. This
documentation is part of the SimSpace Weaver app SDK distributable
package.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateSnapshot

=over

=item Destination => L<Paws::SimSpaceWeaver::S3Destination>

=item Simulation => Str


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::CreateSnapshot>

Returns: a L<Paws::SimSpaceWeaver::CreateSnapshotOutput> instance

Creates a snapshot of the specified simulation. A snapshot is a file
that contains simulation state data at a specific time. The state data
saved in a snapshot includes entity data from the State Fabric, the
simulation configuration specified in the schema, and the clock tick
number. You can use the snapshot to initialize a new simulation. For
more information about snapshots, see Snapshots
(https://docs.aws.amazon.com/simspaceweaver/latest/userguide/working-with_snapshots.html)
in the I<SimSpace Weaver User Guide>.

You specify a C<Destination> when you create a snapshot. The
C<Destination> is the name of an Amazon S3 bucket and an optional
C<ObjectKeyPrefix>. The C<ObjectKeyPrefix> is usually the name of a
folder in the bucket. SimSpace Weaver creates a C<snapshot> folder
inside the C<Destination> and places the snapshot file there.

The snapshot file is an Amazon S3 object. It has an object key with the
form: C<
I<object-key-prefix>/snapshot/I<simulation-name>-I<YYMMdd>-I<HHmm>-I<ss>.zip>,
where:

=over

=item *

C<I<YY> > is the 2-digit year

=item *

C<I<MM> > is the 2-digit month

=item *

C<I<dd> > is the 2-digit day of the month

=item *

C<I<HH> > is the 2-digit hour (24-hour clock)

=item *

C<I<mm> > is the 2-digit minutes

=item *

C<I<ss> > is the 2-digit seconds

=back



=head2 DeleteApp

=over

=item App => Str

=item Domain => Str

=item Simulation => Str


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::DeleteApp>

Returns: a L<Paws::SimSpaceWeaver::DeleteAppOutput> instance

Deletes the instance of the given custom app.


=head2 DeleteSimulation

=over

=item Simulation => Str


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::DeleteSimulation>

Returns: a L<Paws::SimSpaceWeaver::DeleteSimulationOutput> instance

Deletes all SimSpace Weaver resources assigned to the given simulation.

Your simulation uses resources in other Amazon Web Services. This API
operation doesn't delete resources in other Amazon Web Services.


=head2 DescribeApp

=over

=item App => Str

=item Domain => Str

=item Simulation => Str


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::DescribeApp>

Returns: a L<Paws::SimSpaceWeaver::DescribeAppOutput> instance

Returns the state of the given custom app.


=head2 DescribeSimulation

=over

=item Simulation => Str


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::DescribeSimulation>

Returns: a L<Paws::SimSpaceWeaver::DescribeSimulationOutput> instance

Returns the current state of the given simulation.


=head2 ListApps

=over

=item Simulation => Str

=item [Domain => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::ListApps>

Returns: a L<Paws::SimSpaceWeaver::ListAppsOutput> instance

Lists all custom apps or service apps for the given simulation and
domain.


=head2 ListSimulations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::ListSimulations>

Returns: a L<Paws::SimSpaceWeaver::ListSimulationsOutput> instance

Lists the SimSpace Weaver simulations in the Amazon Web Services
account used to make the API call.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::ListTagsForResource>

Returns: a L<Paws::SimSpaceWeaver::ListTagsForResourceOutput> instance

Lists all tags on a SimSpace Weaver resource.


=head2 StartApp

=over

=item Domain => Str

=item Name => Str

=item Simulation => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [LaunchOverrides => L<Paws::SimSpaceWeaver::LaunchOverrides>]


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::StartApp>

Returns: a L<Paws::SimSpaceWeaver::StartAppOutput> instance

Starts a custom app with the configuration specified in the simulation
schema.


=head2 StartClock

=over

=item Simulation => Str


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::StartClock>

Returns: a L<Paws::SimSpaceWeaver::StartClockOutput> instance

Starts the simulation clock.


=head2 StartSimulation

=over

=item Name => Str

=item RoleArn => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [MaximumDuration => Str]

=item [SchemaS3Location => L<Paws::SimSpaceWeaver::S3Location>]

=item [SnapshotS3Location => L<Paws::SimSpaceWeaver::S3Location>]

=item [Tags => L<Paws::SimSpaceWeaver::TagMap>]


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::StartSimulation>

Returns: a L<Paws::SimSpaceWeaver::StartSimulationOutput> instance

Starts a simulation with the given name. You must choose to start your
simulation from a schema or from a snapshot. For more information about
the schema, see the schema reference
(https://docs.aws.amazon.com/simspaceweaver/latest/userguide/schema-reference.html)
in the I<SimSpace Weaver User Guide>. For more information about
snapshots, see Snapshots
(https://docs.aws.amazon.com/simspaceweaver/latest/userguide/working-with_snapshots.html)
in the I<SimSpace Weaver User Guide>.


=head2 StopApp

=over

=item App => Str

=item Domain => Str

=item Simulation => Str


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::StopApp>

Returns: a L<Paws::SimSpaceWeaver::StopAppOutput> instance

Stops the given custom app and shuts down all of its allocated compute
resources.


=head2 StopClock

=over

=item Simulation => Str


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::StopClock>

Returns: a L<Paws::SimSpaceWeaver::StopClockOutput> instance

Stops the simulation clock.


=head2 StopSimulation

=over

=item Simulation => Str


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::StopSimulation>

Returns: a L<Paws::SimSpaceWeaver::StopSimulationOutput> instance

Stops the given simulation.

You can't restart a simulation after you stop it. If you want to
restart a simulation, then you must stop it, delete it, and start a new
instance of it.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::SimSpaceWeaver::TagMap>


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::TagResource>

Returns: a L<Paws::SimSpaceWeaver::TagResourceOutput> instance

Adds tags to a SimSpace Weaver resource. For more information about
tags, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SimSpaceWeaver::UntagResource>

Returns: a L<Paws::SimSpaceWeaver::UntagResourceOutput> instance

Removes tags from a SimSpace Weaver resource. For more information
about tags, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Reference>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


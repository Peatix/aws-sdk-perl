package Paws::ControlTower;
  use Moose;
  sub service { 'controltower' }
  sub signing_name { 'controltower' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateLandingZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::CreateLandingZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLandingZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::DeleteLandingZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::DisableBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::DisableControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::EnableBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::EnableControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::GetBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBaselineOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::GetBaselineOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetControlOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::GetControlOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnabledBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::GetEnabledBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnabledControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::GetEnabledControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLandingZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::GetLandingZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLandingZoneOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::GetLandingZoneOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBaselines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::ListBaselines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListControlOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::ListControlOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnabledBaselines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::ListEnabledBaselines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnabledControls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::ListEnabledControls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLandingZoneOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::ListLandingZoneOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLandingZones {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::ListLandingZones', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetEnabledBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::ResetEnabledBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetEnabledControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::ResetEnabledControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetLandingZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::ResetLandingZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnabledBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::UpdateEnabledBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnabledControl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::UpdateEnabledControl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLandingZone {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ControlTower::UpdateLandingZone', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBaselines {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBaselines(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListBaselines(@_, nextToken => $next_result->nextToken);
        push @{ $result->baselines }, @{ $next_result->baselines };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'baselines') foreach (@{ $result->baselines });
        $result = $self->ListBaselines(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'baselines') foreach (@{ $result->baselines });
    }

    return undef
  }
  sub ListAllControlOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListControlOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListControlOperations(@_, nextToken => $next_result->nextToken);
        push @{ $result->controlOperations }, @{ $next_result->controlOperations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'controlOperations') foreach (@{ $result->controlOperations });
        $result = $self->ListControlOperations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'controlOperations') foreach (@{ $result->controlOperations });
    }

    return undef
  }
  sub ListAllEnabledBaselines {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnabledBaselines(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnabledBaselines(@_, nextToken => $next_result->nextToken);
        push @{ $result->enabledBaselines }, @{ $next_result->enabledBaselines };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'enabledBaselines') foreach (@{ $result->enabledBaselines });
        $result = $self->ListEnabledBaselines(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'enabledBaselines') foreach (@{ $result->enabledBaselines });
    }

    return undef
  }
  sub ListAllEnabledControls {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnabledControls(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnabledControls(@_, nextToken => $next_result->nextToken);
        push @{ $result->enabledControls }, @{ $next_result->enabledControls };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'enabledControls') foreach (@{ $result->enabledControls });
        $result = $self->ListEnabledControls(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'enabledControls') foreach (@{ $result->enabledControls });
    }

    return undef
  }
  sub ListAllLandingZoneOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLandingZoneOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLandingZoneOperations(@_, nextToken => $next_result->nextToken);
        push @{ $result->landingZoneOperations }, @{ $next_result->landingZoneOperations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'landingZoneOperations') foreach (@{ $result->landingZoneOperations });
        $result = $self->ListLandingZoneOperations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'landingZoneOperations') foreach (@{ $result->landingZoneOperations });
    }

    return undef
  }
  sub ListAllLandingZones {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLandingZones(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListLandingZones(@_, nextToken => $next_result->nextToken);
        push @{ $result->landingZones }, @{ $next_result->landingZones };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'landingZones') foreach (@{ $result->landingZones });
        $result = $self->ListLandingZones(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'landingZones') foreach (@{ $result->landingZones });
    }

    return undef
  }


  sub operations { qw/CreateLandingZone DeleteLandingZone DisableBaseline DisableControl EnableBaseline EnableControl GetBaseline GetBaselineOperation GetControlOperation GetEnabledBaseline GetEnabledControl GetLandingZone GetLandingZoneOperation ListBaselines ListControlOperations ListEnabledBaselines ListEnabledControls ListLandingZoneOperations ListLandingZones ListTagsForResource ResetEnabledBaseline ResetEnabledControl ResetLandingZone TagResource UntagResource UpdateEnabledBaseline UpdateEnabledControl UpdateLandingZone / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower - Perl Interface to AWS AWS Control Tower

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ControlTower');
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

Amazon Web Services Control Tower offers application programming
interface (API) operations that support programmatic interaction with
these types of resources:

=over

=item *

I<Controls>
(https://docs.aws.amazon.com/controltower/latest/userguide/controls.html)

=over

=item *

DisableControl
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_DisableControl.html)

=item *

EnableControl
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_EnableControl.html)

=item *

GetEnabledControl
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetEnabledControl.html)

=item *

GetControlOperation
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetControlOperation.html)

=item *

ListControlOperations
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListControlOperations.html)

=item *

ListEnabledControls
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListEnabledControls.html)

=item *

ResetEnabledControl
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_ResetEnabledControl.html)

=item *

UpdateEnabledControl
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateEnabledControl.html)

=back

=item *

I<Landing zones>
(https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch.html)

=over

=item *

CreateLandingZone
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_CreateLandingZone.html)

=item *

DeleteLandingZone
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_DeleteLandingZone.html)

=item *

GetLandingZone
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetLandingZone.html)

=item *

GetLandingZoneOperation
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetLandingZoneOperation.html)

=item *

ListLandingZones
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListLandingZones.html)

=item *

ListLandingZoneOperations
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListLandingZoneOperations.html)

=item *

ResetLandingZone
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_ResetLandingZone.html)

=item *

UpdateLandingZone
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateLandingZone.html)

=back

=item *

I<Baselines>
(https://docs.aws.amazon.com/controltower/latest/userguide/types-of-baselines.html)

=over

=item *

DisableBaseline
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_DisableBaseline.html)

=item *

EnableBaseline
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_EnableBaseline.html)

=item *

GetBaseline
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetBaseline.html)

=item *

GetBaselineOperation
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetBaselineOperation.html)

=item *

GetEnabledBaseline
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetEnabledBaseline.html)

=item *

ListBaselines
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListBaselines.html)

=item *

ListEnabledBaselines
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListEnabledBaselines.html)

=item *

ResetEnabledBaseline
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_ResetEnabledBaseline.html)

=item *

UpdateEnabledBaseline
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateEnabledBaseline.html)

=back

=item *

I<Tagging>
(https://docs.aws.amazon.com/controltower/latest/controlreference/tagging.html)

=over

=item *

ListTagsForResource
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListTagsForResource.html)

=item *

TagResource
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_TagResource.html)

=item *

UntagResource
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_UntagResource.html)

=back

=back

For more information about these types of resources, see the I<Amazon
Web Services Control Tower User Guide>
(https://docs.aws.amazon.com/controltower/latest/userguide/what-is-control-tower.html).

B<About control APIs>

These interfaces allow you to apply the Amazon Web Services library of
pre-defined I<controls> to your organizational units, programmatically.
In Amazon Web Services Control Tower, the terms "control" and
"guardrail" are synonyms.

To call these APIs, you'll need to know:

=over

=item *

the C<controlIdentifier> for the control--or guardrail--you are
targeting.

=item *

the ARN associated with the target organizational unit (OU), which we
call the C<targetIdentifier>.

=item *

the ARN associated with a resource that you wish to tag or untag.

=back

B<To get the C<controlIdentifier> for your Amazon Web Services Control
Tower control:>

The C<controlIdentifier> is an ARN that is specified for each control.
You can view the C<controlIdentifier> in the console on the B<Control
details> page, as well as in the documentation.

B<About identifiers for Amazon Web Services Control Tower>

The Amazon Web Services Control Tower C<controlIdentifier> is unique in
each Amazon Web Services Region for each control. You can find the
C<controlIdentifier> for each Region and control in the Tables of
control metadata
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-metadata-tables.html)
or the Control availability by Region tables
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-region-tables.html)
in the I<Amazon Web Services Control Tower Controls Reference Guide>.

A quick-reference list of control identifers for the Amazon Web
Services Control Tower legacy I<Strongly recommended> and I<Elective>
controls is given in Resource identifiers for APIs and controls
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-identifiers.html.html)
in the I<Amazon Web Services Control Tower Controls Reference Guide>
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-identifiers.html).
Remember that I<Mandatory> controls cannot be added or removed.

B<Some controls have two identifiers>

=over

=item *

B<ARN format for Amazon Web Services Control Tower:>
C<arn:aws:controltower:{REGION}::control/{CONTROL_TOWER_OPAQUE_ID}>

B<Example:>

C<arn:aws:controltower:us-west-2::control/AWS-GR_AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED>

=item *

B<ARN format for Amazon Web Services Control Catalog:>
C<arn:{PARTITION}:controlcatalog:::control/{CONTROL_CATALOG_OPAQUE_ID}>

=back

You can find the C<{CONTROL_CATALOG_OPAQUE_ID}> in the I<Amazon Web
Services Control Tower Controls Reference Guide>
(https://docs.aws.amazon.com/controltower/latest/controlreference/all-global-identifiers.html),
or in the Amazon Web Services Control Tower console, on the B<Control
details> page.

The Amazon Web Services Control Tower APIs for enabled controls, such
as C<GetEnabledControl> and C<ListEnabledControls> always return an ARN
of the same type given when the control was enabled.

B<To get the C<targetIdentifier>:>

The C<targetIdentifier> is the ARN for an OU.

In the Amazon Web Services Organizations console, you can find the ARN
for the OU on the B<Organizational unit details> page associated with
that OU.

B<OU ARN format:>

C<arn:${Partition}:organizations::${MasterAccountId}:ou/o-${OrganizationId}/ou-${OrganizationalUnitId}>

B<About landing zone APIs>

You can configure and launch an Amazon Web Services Control Tower
landing zone with APIs. For an introduction and steps, see Getting
started with Amazon Web Services Control Tower using APIs
(https://docs.aws.amazon.com/controltower/latest/userguide/getting-started-apis.html).

For an overview of landing zone API operations, see Amazon Web Services
Control Tower supports landing zone APIs
(https://docs.aws.amazon.com/controltower/latest/userguide/2023-all.html#landing-zone-apis).
The individual API operations for landing zones are detailed in this
document, the API reference manual
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_Operations.html),
in the "Actions" section.

B<About baseline APIs>

You can apply the C<AWSControlTowerBaseline> baseline to an
organizational unit (OU) as a way to register the OU with Amazon Web
Services Control Tower, programmatically. For a general overview of
this capability, see Amazon Web Services Control Tower supports APIs
for OU registration and configuration with baselines
(https://docs.aws.amazon.com/controltower/latest/userguide/2024-all.html#baseline-apis).

You can call the baseline API operations to view the baselines that
Amazon Web Services Control Tower enables for your landing zone, on
your behalf, when setting up the landing zone. These baselines are
read-only baselines.

The individual API operations for baselines are detailed in this
document, the API reference manual
(https://docs.aws.amazon.com/controltower/latest/APIReference/API_Operations.html),
in the "Actions" section. For usage examples, see Baseline API input
and output examples with CLI
(https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).

B<About Amazon Web Services Control Catalog identifiers>

=over

=item *

The C<EnableControl> and C<DisableControl> API operations can be called
by specifying either the Amazon Web Services Control Tower identifer or
the Amazon Web Services Control Catalog identifier. The API response
returns the same type of identifier that you specified when calling the
API.

=item *

If you use an Amazon Web Services Control Tower identifier to call the
C<EnableControl> API, and then call C<EnableControl> again with an
Amazon Web Services Control Catalog identifier, Amazon Web Services
Control Tower returns an error message stating that the control is
already enabled. Similar behavior applies to the C<DisableControl> API
operation.

=item *

Mandatory controls and the landing-zone-level Region deny control have
Amazon Web Services Control Tower identifiers only.

=back

B<Details and examples>

=over

=item *

Control API input and output examples with CLI
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html)

=item *

Baseline API input and output examples with CLI
(https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html)

=item *

Enable controls with CloudFormation
(https://docs.aws.amazon.com/controltower/latest/controlreference/enable-controls.html)

=item *

Launch a landing zone with CloudFormation
(https://docs.aws.amazon.com/controltower/latest/userguide/lz-apis-cfn-setup.html)

=item *

Control metadata tables (large page)
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-metadata-tables.html)

=item *

Control availability by Region tables (large page)
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-region-tables.html)

=item *

List of identifiers for legacy controls
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-identifiers.html)

=item *

Controls reference guide
(https://docs.aws.amazon.com/controltower/latest/controlreference/controls.html)

=item *

Controls library groupings
(https://docs.aws.amazon.com/controltower/latest/controlreference/controls-reference.html)

=item *

Creating Amazon Web Services Control Tower resources with Amazon Web
Services CloudFormation
(https://docs.aws.amazon.com/controltower/latest/userguide/creating-resources-with-cloudformation.html)

=back

To view the open source resource repository on GitHub, see
aws-cloudformation/aws-cloudformation-resource-providers-controltower
(https://github.com/aws-cloudformation/aws-cloudformation-resource-providers-controltower)

B<Recording API Requests>

Amazon Web Services Control Tower supports Amazon Web Services
CloudTrail, a service that records Amazon Web Services API calls for
your Amazon Web Services account and delivers log files to an Amazon S3
bucket. By using information collected by CloudTrail, you can determine
which requests the Amazon Web Services Control Tower service received,
who made the request and when, and so on. For more about Amazon Web
Services Control Tower and its support for CloudTrail, see Logging
Amazon Web Services Control Tower Actions with Amazon Web Services
CloudTrail
(https://docs.aws.amazon.com/controltower/latest/userguide/logging-using-cloudtrail.html)
in the Amazon Web Services Control Tower User Guide. To learn more
about CloudTrail, including how to turn it on and find your log files,
see the Amazon Web Services CloudTrail User Guide.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10>


=head1 METHODS

=head2 CreateLandingZone

=over

=item Manifest => L<Paws::ControlTower::Manifest>

=item Version => Str

=item [Tags => L<Paws::ControlTower::TagMap>]


=back

Each argument is described in detail in: L<Paws::ControlTower::CreateLandingZone>

Returns: a L<Paws::ControlTower::CreateLandingZoneOutput> instance

Creates a new landing zone. This API call starts an asynchronous
operation that creates and configures a landing zone, based on the
parameters specified in the manifest JSON file.


=head2 DeleteLandingZone

=over

=item LandingZoneIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::DeleteLandingZone>

Returns: a L<Paws::ControlTower::DeleteLandingZoneOutput> instance

Decommissions a landing zone. This API call starts an asynchronous
operation that deletes Amazon Web Services Control Tower resources
deployed in accounts managed by Amazon Web Services Control Tower.


=head2 DisableBaseline

=over

=item EnabledBaselineIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::DisableBaseline>

Returns: a L<Paws::ControlTower::DisableBaselineOutput> instance

Disable an C<EnabledBaseline> resource on the specified Target. This
API starts an asynchronous operation to remove all resources deployed
as part of the baseline enablement. The resource will vary depending on
the enabled baseline. For usage examples, see I<the Amazon Web Services
Control Tower User Guide>
(https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).


=head2 DisableControl

=over

=item ControlIdentifier => Str

=item TargetIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::DisableControl>

Returns: a L<Paws::ControlTower::DisableControlOutput> instance

This API call turns off a control. It starts an asynchronous operation
that deletes Amazon Web Services resources on the specified
organizational unit and the accounts it contains. The resources will
vary according to the control that you specify. For usage examples, see
the I<Controls Reference Guide>
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).


=head2 EnableBaseline

=over

=item BaselineIdentifier => Str

=item BaselineVersion => Str

=item TargetIdentifier => Str

=item [Parameters => ArrayRef[L<Paws::ControlTower::EnabledBaselineParameter>]]

=item [Tags => L<Paws::ControlTower::TagMap>]


=back

Each argument is described in detail in: L<Paws::ControlTower::EnableBaseline>

Returns: a L<Paws::ControlTower::EnableBaselineOutput> instance

Enable (apply) a C<Baseline> to a Target. This API starts an
asynchronous operation to deploy resources specified by the C<Baseline>
to the specified Target. For usage examples, see I<the Amazon Web
Services Control Tower User Guide>
(https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).


=head2 EnableControl

=over

=item ControlIdentifier => Str

=item TargetIdentifier => Str

=item [Parameters => ArrayRef[L<Paws::ControlTower::EnabledControlParameter>]]

=item [Tags => L<Paws::ControlTower::TagMap>]


=back

Each argument is described in detail in: L<Paws::ControlTower::EnableControl>

Returns: a L<Paws::ControlTower::EnableControlOutput> instance

This API call activates a control. It starts an asynchronous operation
that creates Amazon Web Services resources on the specified
organizational unit and the accounts it contains. The resources created
will vary according to the control that you specify. For usage
examples, see the I<Controls Reference Guide>
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).


=head2 GetBaseline

=over

=item BaselineIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::GetBaseline>

Returns: a L<Paws::ControlTower::GetBaselineOutput> instance

Retrieve details about an existing C<Baseline> resource by specifying
its identifier. For usage examples, see I<the Amazon Web Services
Control Tower User Guide>
(https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).


=head2 GetBaselineOperation

=over

=item OperationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::GetBaselineOperation>

Returns: a L<Paws::ControlTower::GetBaselineOperationOutput> instance

Returns the details of an asynchronous baseline operation, as initiated
by any of these APIs: C<EnableBaseline>, C<DisableBaseline>,
C<UpdateEnabledBaseline>, C<ResetEnabledBaseline>. A status message is
displayed in case of operation failure. For usage examples, see I<the
Amazon Web Services Control Tower User Guide>
(https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).


=head2 GetControlOperation

=over

=item OperationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::GetControlOperation>

Returns: a L<Paws::ControlTower::GetControlOperationOutput> instance

Returns the status of a particular C<EnableControl> or
C<DisableControl> operation. Displays a message in case of error.
Details for an operation are available for 90 days. For usage examples,
see the I<Controls Reference Guide>
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).


=head2 GetEnabledBaseline

=over

=item EnabledBaselineIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::GetEnabledBaseline>

Returns: a L<Paws::ControlTower::GetEnabledBaselineOutput> instance

Retrieve details of an C<EnabledBaseline> resource by specifying its
identifier.


=head2 GetEnabledControl

=over

=item EnabledControlIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::GetEnabledControl>

Returns: a L<Paws::ControlTower::GetEnabledControlOutput> instance

Retrieves details about an enabled control. For usage examples, see the
I<Controls Reference Guide>
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).


=head2 GetLandingZone

=over

=item LandingZoneIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::GetLandingZone>

Returns: a L<Paws::ControlTower::GetLandingZoneOutput> instance

Returns details about the landing zone. Displays a message in case of
error.


=head2 GetLandingZoneOperation

=over

=item OperationIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::GetLandingZoneOperation>

Returns: a L<Paws::ControlTower::GetLandingZoneOperationOutput> instance

Returns the status of the specified landing zone operation. Details for
an operation are available for 90 days.


=head2 ListBaselines

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ControlTower::ListBaselines>

Returns: a L<Paws::ControlTower::ListBaselinesOutput> instance

Returns a summary list of all available baselines. For usage examples,
see I<the Amazon Web Services Control Tower User Guide>
(https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).


=head2 ListControlOperations

=over

=item [Filter => L<Paws::ControlTower::ControlOperationFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ControlTower::ListControlOperations>

Returns: a L<Paws::ControlTower::ListControlOperationsOutput> instance

Provides a list of operations in progress or queued. For usage
examples, see ListControlOperation examples
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html#list-control-operations-api-examples).


=head2 ListEnabledBaselines

=over

=item [Filter => L<Paws::ControlTower::EnabledBaselineFilter>]

=item [IncludeChildren => Bool]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ControlTower::ListEnabledBaselines>

Returns: a L<Paws::ControlTower::ListEnabledBaselinesOutput> instance

Returns a list of summaries describing C<EnabledBaseline> resources.
You can filter the list by the corresponding C<Baseline> or C<Target>
of the C<EnabledBaseline> resources. For usage examples, see I<the
Amazon Web Services Control Tower User Guide>
(https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).


=head2 ListEnabledControls

=over

=item [Filter => L<Paws::ControlTower::EnabledControlFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TargetIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::ControlTower::ListEnabledControls>

Returns: a L<Paws::ControlTower::ListEnabledControlsOutput> instance

Lists the controls enabled by Amazon Web Services Control Tower on the
specified organizational unit and the accounts it contains. For usage
examples, see the I<Controls Reference Guide>
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).


=head2 ListLandingZoneOperations

=over

=item [Filter => L<Paws::ControlTower::LandingZoneOperationFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ControlTower::ListLandingZoneOperations>

Returns: a L<Paws::ControlTower::ListLandingZoneOperationsOutput> instance

Lists all landing zone operations from the past 90 days. Results are
sorted by time, with the most recent operation first.


=head2 ListLandingZones

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ControlTower::ListLandingZones>

Returns: a L<Paws::ControlTower::ListLandingZonesOutput> instance

Returns the landing zone ARN for the landing zone deployed in your
managed account. This API also creates an ARN for existing accounts
that do not yet have a landing zone ARN.

Returns one landing zone ARN.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::ListTagsForResource>

Returns: a L<Paws::ControlTower::ListTagsForResourceOutput> instance

Returns a list of tags associated with the resource. For usage
examples, see the I<Controls Reference Guide>
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).


=head2 ResetEnabledBaseline

=over

=item EnabledBaselineIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::ResetEnabledBaseline>

Returns: a L<Paws::ControlTower::ResetEnabledBaselineOutput> instance

Re-enables an C<EnabledBaseline> resource. For example, this API can
re-apply the existing C<Baseline> after a new member account is moved
to the target OU. For usage examples, see I<the Amazon Web Services
Control Tower User Guide>
(https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).


=head2 ResetEnabledControl

=over

=item EnabledControlIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::ResetEnabledControl>

Returns: a L<Paws::ControlTower::ResetEnabledControlOutput> instance

Resets an enabled control.


=head2 ResetLandingZone

=over

=item LandingZoneIdentifier => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::ResetLandingZone>

Returns: a L<Paws::ControlTower::ResetLandingZoneOutput> instance

This API call resets a landing zone. It starts an asynchronous
operation that resets the landing zone to the parameters specified in
the original configuration, which you specified in the manifest file.
Nothing in the manifest file's original landing zone configuration is
changed during the reset process, by default. This API is not the same
as a rollback of a landing zone version, which is not a supported
operation.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::ControlTower::TagMap>


=back

Each argument is described in detail in: L<Paws::ControlTower::TagResource>

Returns: a L<Paws::ControlTower::TagResourceOutput> instance

Applies tags to a resource. For usage examples, see the I<Controls
Reference Guide>
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ControlTower::UntagResource>

Returns: a L<Paws::ControlTower::UntagResourceOutput> instance

Removes tags from a resource. For usage examples, see the I<Controls
Reference Guide>
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).


=head2 UpdateEnabledBaseline

=over

=item BaselineVersion => Str

=item EnabledBaselineIdentifier => Str

=item [Parameters => ArrayRef[L<Paws::ControlTower::EnabledBaselineParameter>]]


=back

Each argument is described in detail in: L<Paws::ControlTower::UpdateEnabledBaseline>

Returns: a L<Paws::ControlTower::UpdateEnabledBaselineOutput> instance

Updates an C<EnabledBaseline> resource's applied parameters or version.
For usage examples, see I<the Amazon Web Services Control Tower User
Guide>
(https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html).


=head2 UpdateEnabledControl

=over

=item EnabledControlIdentifier => Str

=item Parameters => ArrayRef[L<Paws::ControlTower::EnabledControlParameter>]


=back

Each argument is described in detail in: L<Paws::ControlTower::UpdateEnabledControl>

Returns: a L<Paws::ControlTower::UpdateEnabledControlOutput> instance

Updates the configuration of an already enabled control.

If the enabled control shows an C<EnablementStatus> of SUCCEEDED,
supply parameters that are different from the currently configured
parameters. Otherwise, Amazon Web Services Control Tower will not
accept the request.

If the enabled control shows an C<EnablementStatus> of FAILED, Amazon
Web Services Control Tower updates the control to match any valid
parameters that you supply.

If the C<DriftSummary> status for the control shows as C<DRIFTED>, you
cannot call this API. Instead, you can update the control by calling
the C<ResetEnabledControl> API. Alternatively, you can call
C<DisableControl> and then call C<EnableControl> again. Also, you can
run an extending governance operation to repair drift. For usage
examples, see the I<Controls Reference Guide>
(https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html).


=head2 UpdateLandingZone

=over

=item LandingZoneIdentifier => Str

=item Manifest => L<Paws::ControlTower::Manifest>

=item Version => Str


=back

Each argument is described in detail in: L<Paws::ControlTower::UpdateLandingZone>

Returns: a L<Paws::ControlTower::UpdateLandingZoneOutput> instance

This API call updates the landing zone. It starts an asynchronous
operation that updates the landing zone based on the new landing zone
version, or on the changed parameters specified in the updated manifest
file.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBaselines(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllBaselines([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - baselines, passing the object as the first parameter, and the string 'baselines' as the second parameter 

If not, it will return a a L<Paws::ControlTower::ListBaselinesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllControlOperations(sub { },[Filter => L<Paws::ControlTower::ControlOperationFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllControlOperations([Filter => L<Paws::ControlTower::ControlOperationFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - controlOperations, passing the object as the first parameter, and the string 'controlOperations' as the second parameter 

If not, it will return a a L<Paws::ControlTower::ListControlOperationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnabledBaselines(sub { },[Filter => L<Paws::ControlTower::EnabledBaselineFilter>, IncludeChildren => Bool, MaxResults => Int, NextToken => Str])

=head2 ListAllEnabledBaselines([Filter => L<Paws::ControlTower::EnabledBaselineFilter>, IncludeChildren => Bool, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - enabledBaselines, passing the object as the first parameter, and the string 'enabledBaselines' as the second parameter 

If not, it will return a a L<Paws::ControlTower::ListEnabledBaselinesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnabledControls(sub { },[Filter => L<Paws::ControlTower::EnabledControlFilter>, MaxResults => Int, NextToken => Str, TargetIdentifier => Str])

=head2 ListAllEnabledControls([Filter => L<Paws::ControlTower::EnabledControlFilter>, MaxResults => Int, NextToken => Str, TargetIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - enabledControls, passing the object as the first parameter, and the string 'enabledControls' as the second parameter 

If not, it will return a a L<Paws::ControlTower::ListEnabledControlsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLandingZoneOperations(sub { },[Filter => L<Paws::ControlTower::LandingZoneOperationFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllLandingZoneOperations([Filter => L<Paws::ControlTower::LandingZoneOperationFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - landingZoneOperations, passing the object as the first parameter, and the string 'landingZoneOperations' as the second parameter 

If not, it will return a a L<Paws::ControlTower::ListLandingZoneOperationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLandingZones(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllLandingZones([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - landingZones, passing the object as the first parameter, and the string 'landingZones' as the second parameter 

If not, it will return a a L<Paws::ControlTower::ListLandingZonesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


package Paws::GreengrassV2;
  use Moose;
  sub service { 'greengrass' }
  sub signing_name { 'greengrass' }
  sub version { '2020-11-30' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociateServiceRoleToAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::AssociateServiceRoleToAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchAssociateClientDeviceWithCoreDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::BatchAssociateClientDeviceWithCoreDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDisassociateClientDeviceFromCoreDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::BatchDisassociateClientDeviceFromCoreDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::CancelDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateComponentVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::CreateComponentVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::CreateDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::DeleteComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCoreDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::DeleteCoreDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::DeleteDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::DescribeComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateServiceRoleFromAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::DisassociateServiceRoleFromAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::GetComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComponentVersionArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::GetComponentVersionArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnectivityInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::GetConnectivityInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCoreDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::GetCoreDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::GetDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceRoleForAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::GetServiceRoleForAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClientDevicesAssociatedWithCoreDevice {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::ListClientDevicesAssociatedWithCoreDevice', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::ListComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponentVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::ListComponentVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCoreDevices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::ListCoreDevices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::ListDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEffectiveDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::ListEffectiveDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstalledComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::ListInstalledComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResolveComponentCandidates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::ResolveComponentCandidates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnectivityInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GreengrassV2::UpdateConnectivityInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllClientDevicesAssociatedWithCoreDevice {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClientDevicesAssociatedWithCoreDevice(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListClientDevicesAssociatedWithCoreDevice(@_, nextToken => $next_result->nextToken);
        push @{ $result->associatedClientDevices }, @{ $next_result->associatedClientDevices };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'associatedClientDevices') foreach (@{ $result->associatedClientDevices });
        $result = $self->ListClientDevicesAssociatedWithCoreDevice(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'associatedClientDevices') foreach (@{ $result->associatedClientDevices });
    }

    return undef
  }
  sub ListAllComponents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComponents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListComponents(@_, nextToken => $next_result->nextToken);
        push @{ $result->components }, @{ $next_result->components };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'components') foreach (@{ $result->components });
        $result = $self->ListComponents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'components') foreach (@{ $result->components });
    }

    return undef
  }
  sub ListAllComponentVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComponentVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListComponentVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->componentVersions }, @{ $next_result->componentVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'componentVersions') foreach (@{ $result->componentVersions });
        $result = $self->ListComponentVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'componentVersions') foreach (@{ $result->componentVersions });
    }

    return undef
  }
  sub ListAllCoreDevices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCoreDevices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCoreDevices(@_, nextToken => $next_result->nextToken);
        push @{ $result->coreDevices }, @{ $next_result->coreDevices };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'coreDevices') foreach (@{ $result->coreDevices });
        $result = $self->ListCoreDevices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'coreDevices') foreach (@{ $result->coreDevices });
    }

    return undef
  }
  sub ListAllDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeployments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDeployments(@_, nextToken => $next_result->nextToken);
        push @{ $result->deployments }, @{ $next_result->deployments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'deployments') foreach (@{ $result->deployments });
        $result = $self->ListDeployments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'deployments') foreach (@{ $result->deployments });
    }

    return undef
  }
  sub ListAllEffectiveDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEffectiveDeployments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEffectiveDeployments(@_, nextToken => $next_result->nextToken);
        push @{ $result->effectiveDeployments }, @{ $next_result->effectiveDeployments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'effectiveDeployments') foreach (@{ $result->effectiveDeployments });
        $result = $self->ListEffectiveDeployments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'effectiveDeployments') foreach (@{ $result->effectiveDeployments });
    }

    return undef
  }
  sub ListAllInstalledComponents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstalledComponents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListInstalledComponents(@_, nextToken => $next_result->nextToken);
        push @{ $result->installedComponents }, @{ $next_result->installedComponents };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'installedComponents') foreach (@{ $result->installedComponents });
        $result = $self->ListInstalledComponents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'installedComponents') foreach (@{ $result->installedComponents });
    }

    return undef
  }


  sub operations { qw/AssociateServiceRoleToAccount BatchAssociateClientDeviceWithCoreDevice BatchDisassociateClientDeviceFromCoreDevice CancelDeployment CreateComponentVersion CreateDeployment DeleteComponent DeleteCoreDevice DeleteDeployment DescribeComponent DisassociateServiceRoleFromAccount GetComponent GetComponentVersionArtifact GetConnectivityInfo GetCoreDevice GetDeployment GetServiceRoleForAccount ListClientDevicesAssociatedWithCoreDevice ListComponents ListComponentVersions ListCoreDevices ListDeployments ListEffectiveDeployments ListInstalledComponents ListTagsForResource ResolveComponentCandidates TagResource UntagResource UpdateConnectivityInfo / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2 - Perl Interface to AWS AWS IoT Greengrass V2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('GreengrassV2');
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

IoT Greengrass brings local compute, messaging, data management, sync,
and ML inference capabilities to edge devices. This enables devices to
collect and analyze data closer to the source of information, react
autonomously to local events, and communicate securely with each other
on local networks. Local devices can also communicate securely with
Amazon Web Services IoT Core and export IoT data to the Amazon Web
Services Cloud. IoT Greengrass developers can use Lambda functions and
components to create and deploy applications to fleets of edge devices
for local operation.

IoT Greengrass Version 2 provides a new major version of the IoT
Greengrass Core software, new APIs, and a new console. Use this API
reference to learn how to use the IoT Greengrass V2 API operations to
manage components, manage deployments, and core devices.

For more information, see What is IoT Greengrass?
(https://docs.aws.amazon.com/greengrass/v2/developerguide/what-is-iot-greengrass.html)
in the I<IoT Greengrass V2 Developer Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/greengrass/>


=head1 METHODS

=head2 AssociateServiceRoleToAccount

=over

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::GreengrassV2::AssociateServiceRoleToAccount>

Returns: a L<Paws::GreengrassV2::AssociateServiceRoleToAccountResponse> instance

Associates a Greengrass service role with IoT Greengrass for your
Amazon Web Services account in this Amazon Web Services Region. IoT
Greengrass uses this role to verify the identity of client devices and
manage core device connectivity information. The role must include the
AWSGreengrassResourceAccessRolePolicy
(https://console.aws.amazon.com/iam/home#/policies/arn:awsiam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy)
managed policy or a custom policy that defines equivalent permissions
for the IoT Greengrass features that you use. For more information, see
Greengrass service role
(https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
in the I<IoT Greengrass Version 2 Developer Guide>.


=head2 BatchAssociateClientDeviceWithCoreDevice

=over

=item CoreDeviceThingName => Str

=item [Entries => ArrayRef[L<Paws::GreengrassV2::AssociateClientDeviceWithCoreDeviceEntry>]]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::BatchAssociateClientDeviceWithCoreDevice>

Returns: a L<Paws::GreengrassV2::BatchAssociateClientDeviceWithCoreDeviceResponse> instance

Associates a list of client devices with a core device. Use this API
operation to specify which client devices can discover a core device
through cloud discovery. With cloud discovery, client devices connect
to IoT Greengrass to retrieve associated core devices' connectivity
information and certificates. For more information, see Configure cloud
discovery
(https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-cloud-discovery.html)
in the I<IoT Greengrass V2 Developer Guide>.

Client devices are local IoT devices that connect to and communicate
with an IoT Greengrass core device over MQTT. You can connect client
devices to a core device to sync MQTT messages and data to Amazon Web
Services IoT Core and interact with client devices in Greengrass
components. For more information, see Interact with local IoT devices
(https://docs.aws.amazon.com/greengrass/v2/developerguide/interact-with-local-iot-devices.html)
in the I<IoT Greengrass V2 Developer Guide>.


=head2 BatchDisassociateClientDeviceFromCoreDevice

=over

=item CoreDeviceThingName => Str

=item [Entries => ArrayRef[L<Paws::GreengrassV2::DisassociateClientDeviceFromCoreDeviceEntry>]]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::BatchDisassociateClientDeviceFromCoreDevice>

Returns: a L<Paws::GreengrassV2::BatchDisassociateClientDeviceFromCoreDeviceResponse> instance

Disassociates a list of client devices from a core device. After you
disassociate a client device from a core device, the client device
won't be able to use cloud discovery to retrieve the core device's
connectivity information and certificates.


=head2 CancelDeployment

=over

=item DeploymentId => Str


=back

Each argument is described in detail in: L<Paws::GreengrassV2::CancelDeployment>

Returns: a L<Paws::GreengrassV2::CancelDeploymentResponse> instance

Cancels a deployment. This operation cancels the deployment for devices
that haven't yet received it. If a device already received the
deployment, this operation doesn't change anything for that device.


=head2 CreateComponentVersion

=over

=item [ClientToken => Str]

=item [InlineRecipe => Str]

=item [LambdaFunction => L<Paws::GreengrassV2::LambdaFunctionRecipeSource>]

=item [Tags => L<Paws::GreengrassV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::CreateComponentVersion>

Returns: a L<Paws::GreengrassV2::CreateComponentVersionResponse> instance

Creates a component. Components are software that run on Greengrass
core devices. After you develop and test a component on your core
device, you can use this operation to upload your component to IoT
Greengrass. Then, you can deploy the component to other core devices.

You can use this operation to do the following:

=over

=item *

B<Create components from recipes>

Create a component from a recipe, which is a file that defines the
component's metadata, parameters, dependencies, lifecycle, artifacts,
and platform capability. For more information, see IoT Greengrass
component recipe reference
(https://docs.aws.amazon.com/greengrass/v2/developerguide/component-recipe-reference.html)
in the I<IoT Greengrass V2 Developer Guide>.

To create a component from a recipe, specify C<inlineRecipe> when you
call this operation.

=item *

B<Create components from Lambda functions>

Create a component from an Lambda function that runs on IoT Greengrass.
This creates a recipe and artifacts from the Lambda function's
deployment package. You can use this operation to migrate Lambda
functions from IoT Greengrass V1 to IoT Greengrass V2.

This function accepts Lambda functions in all supported versions of
Python, Node.js, and Java runtimes. IoT Greengrass doesn't apply any
additional restrictions on deprecated Lambda runtime versions.

To create a component from a Lambda function, specify C<lambdaFunction>
when you call this operation.

IoT Greengrass currently supports Lambda functions on only Linux core
devices.

=back



=head2 CreateDeployment

=over

=item TargetArn => Str

=item [ClientToken => Str]

=item [Components => L<Paws::GreengrassV2::ComponentDeploymentSpecifications>]

=item [DeploymentName => Str]

=item [DeploymentPolicies => L<Paws::GreengrassV2::DeploymentPolicies>]

=item [IotJobConfiguration => L<Paws::GreengrassV2::DeploymentIoTJobConfiguration>]

=item [ParentTargetArn => Str]

=item [Tags => L<Paws::GreengrassV2::TagMap>]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::CreateDeployment>

Returns: a L<Paws::GreengrassV2::CreateDeploymentResponse> instance

Creates a continuous deployment for a target, which is a Greengrass
core device or group of core devices. When you add a new core device to
a group of core devices that has a deployment, IoT Greengrass deploys
that group's deployment to the new device.

You can define one deployment for each target. When you create a new
deployment for a target that has an existing deployment, you replace
the previous deployment. IoT Greengrass applies the new deployment to
the target devices.

Every deployment has a revision number that indicates how many
deployment revisions you define for a target. Use this operation to
create a new revision of an existing deployment.

For more information, see the Create deployments
(https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html)
in the I<IoT Greengrass V2 Developer Guide>.


=head2 DeleteComponent

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::GreengrassV2::DeleteComponent>

Returns: nothing

Deletes a version of a component from IoT Greengrass.

This operation deletes the component's recipe and artifacts. As a
result, deployments that refer to this component version will fail. If
you have deployments that use this component version, you can remove
the component from the deployment or update the deployment to use a
valid version.


=head2 DeleteCoreDevice

=over

=item CoreDeviceThingName => Str


=back

Each argument is described in detail in: L<Paws::GreengrassV2::DeleteCoreDevice>

Returns: nothing

Deletes a Greengrass core device, which is an IoT thing. This operation
removes the core device from the list of core devices. This operation
doesn't delete the IoT thing. For more information about how to delete
the IoT thing, see DeleteThing
(https://docs.aws.amazon.com/iot/latest/apireference/API_DeleteThing.html)
in the I<IoT API Reference>.


=head2 DeleteDeployment

=over

=item DeploymentId => Str


=back

Each argument is described in detail in: L<Paws::GreengrassV2::DeleteDeployment>

Returns: nothing

Deletes a deployment. To delete an active deployment, you must first
cancel it. For more information, see CancelDeployment
(https://docs.aws.amazon.com/iot/latest/apireference/API_CancelDeployment.html).

Deleting a deployment doesn't affect core devices that run that
deployment, because core devices store the deployment's configuration
on the device. Additionally, core devices can roll back to a previous
deployment that has been deleted.


=head2 DescribeComponent

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::GreengrassV2::DescribeComponent>

Returns: a L<Paws::GreengrassV2::DescribeComponentResponse> instance

Retrieves metadata for a version of a component.


=head2 DisassociateServiceRoleFromAccount






Each argument is described in detail in: L<Paws::GreengrassV2::DisassociateServiceRoleFromAccount>

Returns: a L<Paws::GreengrassV2::DisassociateServiceRoleFromAccountResponse> instance

Disassociates the Greengrass service role from IoT Greengrass for your
Amazon Web Services account in this Amazon Web Services Region. Without
a service role, IoT Greengrass can't verify the identity of client
devices or manage core device connectivity information. For more
information, see Greengrass service role
(https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
in the I<IoT Greengrass Version 2 Developer Guide>.


=head2 GetComponent

=over

=item Arn => Str

=item [RecipeOutputFormat => Str]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::GetComponent>

Returns: a L<Paws::GreengrassV2::GetComponentResponse> instance

Gets the recipe for a version of a component.


=head2 GetComponentVersionArtifact

=over

=item Arn => Str

=item ArtifactName => Str

=item [IotEndpointType => Str]

=item [S3EndpointType => Str]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::GetComponentVersionArtifact>

Returns: a L<Paws::GreengrassV2::GetComponentVersionArtifactResponse> instance

Gets the pre-signed URL to download a public or a Lambda component
artifact. Core devices call this operation to identify the URL that
they can use to download an artifact to install.


=head2 GetConnectivityInfo

=over

=item ThingName => Str


=back

Each argument is described in detail in: L<Paws::GreengrassV2::GetConnectivityInfo>

Returns: a L<Paws::GreengrassV2::GetConnectivityInfoResponse> instance

Retrieves connectivity information for a Greengrass core device.

Connectivity information includes endpoints and ports where client
devices can connect to an MQTT broker on the core device. When a client
device calls the IoT Greengrass discovery API
(https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html),
IoT Greengrass returns connectivity information for all of the core
devices where the client device can connect. For more information, see
Connect client devices to core devices
(https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html)
in the I<IoT Greengrass Version 2 Developer Guide>.


=head2 GetCoreDevice

=over

=item CoreDeviceThingName => Str


=back

Each argument is described in detail in: L<Paws::GreengrassV2::GetCoreDevice>

Returns: a L<Paws::GreengrassV2::GetCoreDeviceResponse> instance

Retrieves metadata for a Greengrass core device.

IoT Greengrass relies on individual devices to send status updates to
the Amazon Web Services Cloud. If the IoT Greengrass Core software
isn't running on the device, or if device isn't connected to the Amazon
Web Services Cloud, then the reported status of that device might not
reflect its current status. The status timestamp indicates when the
device status was last updated.

Core devices send status updates at the following times:

=over

=item *

When the IoT Greengrass Core software starts

=item *

When the core device receives a deployment from the Amazon Web Services
Cloud

=item *

When the status of any component on the core device becomes C<BROKEN>

=item *

At a regular interval that you can configure
(https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss),
which defaults to 24 hours

=item *

For IoT Greengrass Core v2.7.0, the core device sends status updates
upon local deployment and cloud deployment

=back



=head2 GetDeployment

=over

=item DeploymentId => Str


=back

Each argument is described in detail in: L<Paws::GreengrassV2::GetDeployment>

Returns: a L<Paws::GreengrassV2::GetDeploymentResponse> instance

Gets a deployment. Deployments define the components that run on
Greengrass core devices.


=head2 GetServiceRoleForAccount






Each argument is described in detail in: L<Paws::GreengrassV2::GetServiceRoleForAccount>

Returns: a L<Paws::GreengrassV2::GetServiceRoleForAccountResponse> instance

Gets the service role associated with IoT Greengrass for your Amazon
Web Services account in this Amazon Web Services Region. IoT Greengrass
uses this role to verify the identity of client devices and manage core
device connectivity information. For more information, see Greengrass
service role
(https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
in the I<IoT Greengrass Version 2 Developer Guide>.


=head2 ListClientDevicesAssociatedWithCoreDevice

=over

=item CoreDeviceThingName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::ListClientDevicesAssociatedWithCoreDevice>

Returns: a L<Paws::GreengrassV2::ListClientDevicesAssociatedWithCoreDeviceResponse> instance

Retrieves a paginated list of client devices that are associated with a
core device.


=head2 ListComponents

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Scope => Str]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::ListComponents>

Returns: a L<Paws::GreengrassV2::ListComponentsResponse> instance

Retrieves a paginated list of component summaries. This list includes
components that you have permission to view.


=head2 ListComponentVersions

=over

=item Arn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::ListComponentVersions>

Returns: a L<Paws::GreengrassV2::ListComponentVersionsResponse> instance

Retrieves a paginated list of all versions for a component. Greater
versions are listed first.


=head2 ListCoreDevices

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Runtime => Str]

=item [Status => Str]

=item [ThingGroupArn => Str]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::ListCoreDevices>

Returns: a L<Paws::GreengrassV2::ListCoreDevicesResponse> instance

Retrieves a paginated list of Greengrass core devices.

IoT Greengrass relies on individual devices to send status updates to
the Amazon Web Services Cloud. If the IoT Greengrass Core software
isn't running on the device, or if device isn't connected to the Amazon
Web Services Cloud, then the reported status of that device might not
reflect its current status. The status timestamp indicates when the
device status was last updated.

Core devices send status updates at the following times:

=over

=item *

When the IoT Greengrass Core software starts

=item *

When the core device receives a deployment from the Amazon Web Services
Cloud

=item *

For Greengrass nucleus 2.12.2 and earlier, the core device sends status
updates when the status of any component on the core device becomes
C<ERRORED> or C<BROKEN>.

=item *

For Greengrass nucleus 2.12.3 and later, the core device sends status
updates when the status of any component on the core device becomes
C<ERRORED>, C<BROKEN>, C<RUNNING>, or C<FINISHED>.

=item *

At a regular interval that you can configure
(https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss),
which defaults to 24 hours

=item *

For IoT Greengrass Core v2.7.0, the core device sends status updates
upon local deployment and cloud deployment

=back



=head2 ListDeployments

=over

=item [HistoryFilter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ParentTargetArn => Str]

=item [TargetArn => Str]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::ListDeployments>

Returns: a L<Paws::GreengrassV2::ListDeploymentsResponse> instance

Retrieves a paginated list of deployments.


=head2 ListEffectiveDeployments

=over

=item CoreDeviceThingName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::ListEffectiveDeployments>

Returns: a L<Paws::GreengrassV2::ListEffectiveDeploymentsResponse> instance

Retrieves a paginated list of deployment jobs that IoT Greengrass sends
to Greengrass core devices.


=head2 ListInstalledComponents

=over

=item CoreDeviceThingName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TopologyFilter => Str]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::ListInstalledComponents>

Returns: a L<Paws::GreengrassV2::ListInstalledComponentsResponse> instance

Retrieves a paginated list of the components that a Greengrass core
device runs. By default, this list doesn't include components that are
deployed as dependencies of other components. To include dependencies
in the response, set the C<topologyFilter> parameter to C<ALL>.

IoT Greengrass relies on individual devices to send status updates to
the Amazon Web Services Cloud. If the IoT Greengrass Core software
isn't running on the device, or if device isn't connected to the Amazon
Web Services Cloud, then the reported status of that device might not
reflect its current status. The status timestamp indicates when the
device status was last updated.

Core devices send status updates at the following times:

=over

=item *

When the IoT Greengrass Core software starts

=item *

When the core device receives a deployment from the Amazon Web Services
Cloud

=item *

When the status of any component on the core device becomes C<BROKEN>

=item *

At a regular interval that you can configure
(https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html#greengrass-nucleus-component-configuration-fss),
which defaults to 24 hours

=item *

For IoT Greengrass Core v2.7.0, the core device sends status updates
upon local deployment and cloud deployment

=back



=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::GreengrassV2::ListTagsForResource>

Returns: a L<Paws::GreengrassV2::ListTagsForResourceResponse> instance

Retrieves the list of tags for an IoT Greengrass resource.


=head2 ResolveComponentCandidates

=over

=item [ComponentCandidates => ArrayRef[L<Paws::GreengrassV2::ComponentCandidate>]]

=item [Platform => L<Paws::GreengrassV2::ComponentPlatform>]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::ResolveComponentCandidates>

Returns: a L<Paws::GreengrassV2::ResolveComponentCandidatesResponse> instance

Retrieves a list of components that meet the component, version, and
platform requirements of a deployment. Greengrass core devices call
this operation when they receive a deployment to identify the
components to install.

This operation identifies components that meet all dependency
requirements for a deployment. If the requirements conflict, then this
operation returns an error and the deployment fails. For example, this
occurs if component C<A> requires version C<E<gt>2.0.0> and component
C<B> requires version C<E<lt>2.0.0> of a component dependency.

When you specify the component candidates to resolve, IoT Greengrass
compares each component's digest from the core device with the
component's digest in the Amazon Web Services Cloud. If the digests
don't match, then IoT Greengrass specifies to use the version from the
Amazon Web Services Cloud.

To use this operation, you must use the data plane API endpoint and
authenticate with an IoT device certificate. For more information, see
IoT Greengrass endpoints and quotas
(https://docs.aws.amazon.com/general/latest/gr/greengrass.html).


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::GreengrassV2::TagMap>


=back

Each argument is described in detail in: L<Paws::GreengrassV2::TagResource>

Returns: a L<Paws::GreengrassV2::TagResourceResponse> instance

Adds tags to an IoT Greengrass resource. If a tag already exists for
the resource, this operation updates the tag's value.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::GreengrassV2::UntagResource>

Returns: a L<Paws::GreengrassV2::UntagResourceResponse> instance

Removes a tag from an IoT Greengrass resource.


=head2 UpdateConnectivityInfo

=over

=item ConnectivityInfo => ArrayRef[L<Paws::GreengrassV2::ConnectivityInfo>]

=item ThingName => Str


=back

Each argument is described in detail in: L<Paws::GreengrassV2::UpdateConnectivityInfo>

Returns: a L<Paws::GreengrassV2::UpdateConnectivityInfoResponse> instance

Updates connectivity information for a Greengrass core device.

Connectivity information includes endpoints and ports where client
devices can connect to an MQTT broker on the core device. When a client
device calls the IoT Greengrass discovery API
(https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html),
IoT Greengrass returns connectivity information for all of the core
devices where the client device can connect. For more information, see
Connect client devices to core devices
(https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html)
in the I<IoT Greengrass Version 2 Developer Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllClientDevicesAssociatedWithCoreDevice(sub { },CoreDeviceThingName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllClientDevicesAssociatedWithCoreDevice(CoreDeviceThingName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - associatedClientDevices, passing the object as the first parameter, and the string 'associatedClientDevices' as the second parameter 

If not, it will return a a L<Paws::GreengrassV2::ListClientDevicesAssociatedWithCoreDeviceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllComponents(sub { },[MaxResults => Int, NextToken => Str, Scope => Str])

=head2 ListAllComponents([MaxResults => Int, NextToken => Str, Scope => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - components, passing the object as the first parameter, and the string 'components' as the second parameter 

If not, it will return a a L<Paws::GreengrassV2::ListComponentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllComponentVersions(sub { },Arn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllComponentVersions(Arn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - componentVersions, passing the object as the first parameter, and the string 'componentVersions' as the second parameter 

If not, it will return a a L<Paws::GreengrassV2::ListComponentVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCoreDevices(sub { },[MaxResults => Int, NextToken => Str, Runtime => Str, Status => Str, ThingGroupArn => Str])

=head2 ListAllCoreDevices([MaxResults => Int, NextToken => Str, Runtime => Str, Status => Str, ThingGroupArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - coreDevices, passing the object as the first parameter, and the string 'coreDevices' as the second parameter 

If not, it will return a a L<Paws::GreengrassV2::ListCoreDevicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeployments(sub { },[HistoryFilter => Str, MaxResults => Int, NextToken => Str, ParentTargetArn => Str, TargetArn => Str])

=head2 ListAllDeployments([HistoryFilter => Str, MaxResults => Int, NextToken => Str, ParentTargetArn => Str, TargetArn => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - deployments, passing the object as the first parameter, and the string 'deployments' as the second parameter 

If not, it will return a a L<Paws::GreengrassV2::ListDeploymentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEffectiveDeployments(sub { },CoreDeviceThingName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEffectiveDeployments(CoreDeviceThingName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - effectiveDeployments, passing the object as the first parameter, and the string 'effectiveDeployments' as the second parameter 

If not, it will return a a L<Paws::GreengrassV2::ListEffectiveDeploymentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstalledComponents(sub { },CoreDeviceThingName => Str, [MaxResults => Int, NextToken => Str, TopologyFilter => Str])

=head2 ListAllInstalledComponents(CoreDeviceThingName => Str, [MaxResults => Int, NextToken => Str, TopologyFilter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - installedComponents, passing the object as the first parameter, and the string 'installedComponents' as the second parameter 

If not, it will return a a L<Paws::GreengrassV2::ListInstalledComponentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


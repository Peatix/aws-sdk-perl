package Paws::AppConfig;
  use Moose;
  sub service { 'appconfig' }
  sub signing_name { 'appconfig' }
  sub version { '2019-10-09' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfigurationProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::CreateConfigurationProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeploymentStrategy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::CreateDeploymentStrategy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExtension {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::CreateExtension', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateExtensionAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::CreateExtensionAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateHostedConfigurationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::CreateHostedConfigurationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::DeleteConfigurationProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeploymentStrategy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::DeleteDeploymentStrategy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExtension {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::DeleteExtension', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteExtensionAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::DeleteExtensionAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHostedConfigurationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::DeleteHostedConfigurationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfigurationProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetConfigurationProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeploymentStrategy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetDeploymentStrategy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExtension {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetExtension', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExtensionAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetExtensionAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHostedConfigurationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetHostedConfigurationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListConfigurationProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeploymentStrategies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListDeploymentStrategies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExtensionAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListExtensionAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExtensions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListExtensions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHostedConfigurationVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListHostedConfigurationVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::StartDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::StopDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UpdateAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UpdateConfigurationProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeploymentStrategy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UpdateDeploymentStrategy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UpdateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExtension {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UpdateExtension', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateExtensionAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UpdateExtensionAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ValidateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplications(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListApplications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllConfigurationProfiles {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurationProfiles(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConfigurationProfiles(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListConfigurationProfiles(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeployments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDeployments(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListDeployments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllDeploymentStrategies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDeploymentStrategies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDeploymentStrategies(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListDeploymentStrategies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEnvironments(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListEnvironments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllExtensionAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExtensionAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListExtensionAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListExtensionAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllExtensions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExtensions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListExtensions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListExtensions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub ListAllHostedConfigurationVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListHostedConfigurationVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListHostedConfigurationVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->ListHostedConfigurationVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }


  sub operations { qw/CreateApplication CreateConfigurationProfile CreateDeploymentStrategy CreateEnvironment CreateExtension CreateExtensionAssociation CreateHostedConfigurationVersion DeleteApplication DeleteConfigurationProfile DeleteDeploymentStrategy DeleteEnvironment DeleteExtension DeleteExtensionAssociation DeleteHostedConfigurationVersion GetAccountSettings GetApplication GetConfiguration GetConfigurationProfile GetDeployment GetDeploymentStrategy GetEnvironment GetExtension GetExtensionAssociation GetHostedConfigurationVersion ListApplications ListConfigurationProfiles ListDeployments ListDeploymentStrategies ListEnvironments ListExtensionAssociations ListExtensions ListHostedConfigurationVersions ListTagsForResource StartDeployment StopDeployment TagResource UntagResource UpdateAccountSettings UpdateApplication UpdateConfigurationProfile UpdateDeploymentStrategy UpdateEnvironment UpdateExtension UpdateExtensionAssociation ValidateConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig - Perl Interface to AWS Amazon AppConfig

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppConfig');
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

AppConfig feature flags and dynamic configurations help software
builders quickly and securely adjust application behavior in production
environments without full code deployments. AppConfig speeds up
software release frequency, improves application resiliency, and helps
you address emergent issues more quickly. With feature flags, you can
gradually release new capabilities to users and measure the impact of
those changes before fully deploying the new capabilities to all users.
With operational flags and dynamic configurations, you can update block
lists, allow lists, throttling limits, logging verbosity, and perform
other operational tuning to quickly respond to issues in production
environments.

AppConfig is a tool in Amazon Web Services Systems Manager.

Despite the fact that application configuration content can vary
greatly from application to application, AppConfig supports the
following use cases, which cover a broad spectrum of customer needs:

=over

=item *

B<Feature flags and toggles> - Safely release new capabilities to your
customers in a controlled environment. Instantly roll back changes if
you experience a problem.

=item *

B<Application tuning> - Carefully introduce application changes while
testing the impact of those changes with users in production
environments.

=item *

B<Allow list or block list> - Control access to premium features or
instantly block specific users without deploying new code.

=item *

B<Centralized configuration storage> - Keep your configuration data
organized and consistent across all of your workloads. You can use
AppConfig to deploy configuration data stored in the AppConfig hosted
configuration store, Secrets Manager, Systems Manager, Parameter Store,
or Amazon S3.

=back

B<How AppConfig works>

This section provides a high-level description of how AppConfig works
and how you get started.

=over

=item 1. Identify configuration values in code you want to manage in
the cloud

Before you start creating AppConfig artifacts, we recommend you
identify configuration data in your code that you want to dynamically
manage using AppConfig. Good examples include feature flags or toggles,
allow and block lists, logging verbosity, service limits, and
throttling rules, to name a few.

If your configuration data already exists in the cloud, you can take
advantage of AppConfig validation, deployment, and extension features
to further streamline configuration data management.

=item 2. Create an application namespace

To create a namespace, you create an AppConfig artifact called an
application. An application is simply an organizational construct like
a folder.

=item 3. Create environments

For each AppConfig application, you define one or more environments. An
environment is a logical grouping of targets, such as applications in a
C<Beta> or C<Production> environment, Lambda functions, or containers.
You can also define environments for application subcomponents, such as
the C<Web>, C<Mobile>, and C<Back-end>.

You can configure Amazon CloudWatch alarms for each environment. The
system monitors alarms during a configuration deployment. If an alarm
is triggered, the system rolls back the configuration.

=item 4. Create a configuration profile

A configuration profile includes, among other things, a URI that
enables AppConfig to locate your configuration data in its stored
location and a profile type. AppConfig supports two configuration
profile types: feature flags and freeform configurations. Feature flag
configuration profiles store their data in the AppConfig hosted
configuration store and the URI is simply C<hosted>. For freeform
configuration profiles, you can store your data in the AppConfig hosted
configuration store or any Amazon Web Services service that integrates
with AppConfig, as described in Creating a free form configuration
profile
(http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-free-form-configurations-creating.html)
in the the I<AppConfig User Guide>.

A configuration profile can also include optional validators to ensure
your configuration data is syntactically and semantically correct.
AppConfig performs a check using the validators when you start a
deployment. If any errors are detected, the deployment rolls back to
the previous configuration data.

=item 5. Deploy configuration data

When you create a new deployment, you specify the following:

=over

=item *

An application ID

=item *

A configuration profile ID

=item *

A configuration version

=item *

An environment ID where you want to deploy the configuration data

=item *

A deployment strategy ID that defines how fast you want the changes to
take effect

=back

When you call the StartDeployment
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_StartDeployment.html)
API action, AppConfig performs the following tasks:

=over

=item 1.

Retrieves the configuration data from the underlying data store by
using the location URI in the configuration profile.

=item 2.

Verifies the configuration data is syntactically and semantically
correct by using the validators you specified when you created your
configuration profile.

=item 3.

Caches a copy of the data so it is ready to be retrieved by your
application. This cached copy is called the I<deployed data>.

=back

=item 6. Retrieve the configuration

You can configure AppConfig Agent as a local host and have the agent
poll AppConfig for configuration updates. The agent calls the
StartConfigurationSession
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html)
and GetLatestConfiguration
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html)
API actions and caches your configuration data locally. To retrieve the
data, your application makes an HTTP call to the localhost server.
AppConfig Agent supports several use cases, as described in Simplified
retrieval methods
(http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-simplified-methods.html)
in the the I<AppConfig User Guide>.

If AppConfig Agent isn't supported for your use case, you can configure
your application to poll AppConfig for configuration updates by
directly calling the StartConfigurationSession
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html)
and GetLatestConfiguration
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html)
API actions.

=back

This reference is intended to be used with the AppConfig User Guide
(http://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09>


=head1 METHODS

=head2 CreateApplication

=over

=item Name => Str

=item [Description => Str]

=item [Tags => L<Paws::AppConfig::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppConfig::CreateApplication>

Returns: a L<Paws::AppConfig::Application> instance

Creates an application. In AppConfig, an application is simply an
organizational construct like a folder. This organizational construct
has a relationship with some unit of executable code. For example, you
could create an application called MyMobileApp to organize and manage
configuration data for a mobile application installed by your users.


=head2 CreateConfigurationProfile

=over

=item ApplicationId => Str

=item LocationUri => Str

=item Name => Str

=item [Description => Str]

=item [KmsKeyIdentifier => Str]

=item [RetrievalRoleArn => Str]

=item [Tags => L<Paws::AppConfig::TagMap>]

=item [Type => Str]

=item [Validators => ArrayRef[L<Paws::AppConfig::Validator>]]


=back

Each argument is described in detail in: L<Paws::AppConfig::CreateConfigurationProfile>

Returns: a L<Paws::AppConfig::ConfigurationProfile> instance

Creates a configuration profile, which is information that enables
AppConfig to access the configuration source. Valid configuration
sources include the following:

=over

=item *

Configuration data in YAML, JSON, and other formats stored in the
AppConfig hosted configuration store

=item *

Configuration data stored as objects in an Amazon Simple Storage
Service (Amazon S3) bucket

=item *

Pipelines stored in CodePipeline

=item *

Secrets stored in Secrets Manager

=item *

Standard and secure string parameters stored in Amazon Web Services
Systems Manager Parameter Store

=item *

Configuration data in SSM documents stored in the Systems Manager
document store

=back

A configuration profile includes the following information:

=over

=item *

The URI location of the configuration data.

=item *

The Identity and Access Management (IAM) role that provides access to
the configuration data.

=item *

A validator for the configuration data. Available validators include
either a JSON Schema or an Amazon Web Services Lambda function.

=back

For more information, see Create a Configuration and a Configuration
Profile
(http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-and-profile.html)
in the I<AppConfig User Guide>.


=head2 CreateDeploymentStrategy

=over

=item DeploymentDurationInMinutes => Int

=item GrowthFactor => Num

=item Name => Str

=item [Description => Str]

=item [FinalBakeTimeInMinutes => Int]

=item [GrowthType => Str]

=item [ReplicateTo => Str]

=item [Tags => L<Paws::AppConfig::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppConfig::CreateDeploymentStrategy>

Returns: a L<Paws::AppConfig::DeploymentStrategy> instance

Creates a deployment strategy that defines important criteria for
rolling out your configuration to the designated targets. A deployment
strategy includes the overall duration required, a percentage of
targets to receive the deployment during each interval, an algorithm
that defines how percentage grows, and bake time.


=head2 CreateEnvironment

=over

=item ApplicationId => Str

=item Name => Str

=item [Description => Str]

=item [Monitors => ArrayRef[L<Paws::AppConfig::Monitor>]]

=item [Tags => L<Paws::AppConfig::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppConfig::CreateEnvironment>

Returns: a L<Paws::AppConfig::Environment> instance

Creates an environment. For each application, you define one or more
environments. An environment is a deployment group of AppConfig
targets, such as applications in a C<Beta> or C<Production>
environment. You can also define environments for application
subcomponents such as the C<Web>, C<Mobile> and C<Back-end> components
for your application. You can configure Amazon CloudWatch alarms for
each environment. The system monitors alarms during a configuration
deployment. If an alarm is triggered, the system rolls back the
configuration.


=head2 CreateExtension

=over

=item Actions => L<Paws::AppConfig::ActionsMap>

=item Name => Str

=item [Description => Str]

=item [LatestVersionNumber => Int]

=item [Parameters => L<Paws::AppConfig::ParameterMap>]

=item [Tags => L<Paws::AppConfig::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppConfig::CreateExtension>

Returns: a L<Paws::AppConfig::Extension> instance

Creates an AppConfig extension. An extension augments your ability to
inject logic or behavior at different points during the AppConfig
workflow of creating or deploying a configuration.

You can create your own extensions or use the Amazon Web Services
authored extensions provided by AppConfig. For an AppConfig extension
that uses Lambda, you must create a Lambda function to perform any
computation and processing defined in the extension. If you plan to
create custom versions of the Amazon Web Services authored notification
extensions, you only need to specify an Amazon Resource Name (ARN) in
the C<Uri> field for the new extension version.

=over

=item *

For a custom EventBridge notification extension, enter the ARN of the
EventBridge default events in the C<Uri> field.

=item *

For a custom Amazon SNS notification extension, enter the ARN of an
Amazon SNS topic in the C<Uri> field.

=item *

For a custom Amazon SQS notification extension, enter the ARN of an
Amazon SQS message queue in the C<Uri> field.

=back

For more information about extensions, see Extending workflows
(https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
in the I<AppConfig User Guide>.


=head2 CreateExtensionAssociation

=over

=item ExtensionIdentifier => Str

=item ResourceIdentifier => Str

=item [ExtensionVersionNumber => Int]

=item [Parameters => L<Paws::AppConfig::ParameterValueMap>]

=item [Tags => L<Paws::AppConfig::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppConfig::CreateExtensionAssociation>

Returns: a L<Paws::AppConfig::ExtensionAssociation> instance

When you create an extension or configure an Amazon Web Services
authored extension, you associate the extension with an AppConfig
application, environment, or configuration profile. For example, you
can choose to run the C<AppConfig deployment events to Amazon SNS>
Amazon Web Services authored extension and receive notifications on an
Amazon SNS topic anytime a configuration deployment is started for a
specific application. Defining which extension to associate with an
AppConfig resource is called an I<extension association>. An extension
association is a specified relationship between an extension and an
AppConfig resource, such as an application or a configuration profile.
For more information about extensions and associations, see Extending
workflows
(https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
in the I<AppConfig User Guide>.


=head2 CreateHostedConfigurationVersion

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str

=item Content => Str

=item ContentType => Str

=item [Description => Str]

=item [LatestVersionNumber => Int]

=item [VersionLabel => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::CreateHostedConfigurationVersion>

Returns: a L<Paws::AppConfig::HostedConfigurationVersion> instance

Creates a new configuration in the AppConfig hosted configuration
store. If you're creating a feature flag, we recommend you familiarize
yourself with the JSON schema for feature flag data. For more
information, see Type reference for AWS.AppConfig.FeatureFlags
(https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-and-profile-feature-flags.html#appconfig-type-reference-feature-flags)
in the I<AppConfig User Guide>.


=head2 DeleteApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::DeleteApplication>

Returns: nothing

Deletes an application.


=head2 DeleteConfigurationProfile

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str

=item [DeletionProtectionCheck => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::DeleteConfigurationProfile>

Returns: nothing

Deletes a configuration profile.

To prevent users from unintentionally deleting actively-used
configuration profiles, enable deletion protection
(https://docs.aws.amazon.com/appconfig/latest/userguide/deletion-protection.html).


=head2 DeleteDeploymentStrategy

=over

=item DeploymentStrategyId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::DeleteDeploymentStrategy>

Returns: nothing

Deletes a deployment strategy.


=head2 DeleteEnvironment

=over

=item ApplicationId => Str

=item EnvironmentId => Str

=item [DeletionProtectionCheck => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::DeleteEnvironment>

Returns: nothing

Deletes an environment.

To prevent users from unintentionally deleting actively-used
environments, enable deletion protection
(https://docs.aws.amazon.com/appconfig/latest/userguide/deletion-protection.html).


=head2 DeleteExtension

=over

=item ExtensionIdentifier => Str

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::AppConfig::DeleteExtension>

Returns: nothing

Deletes an AppConfig extension. You must delete all associations to an
extension before you delete the extension.


=head2 DeleteExtensionAssociation

=over

=item ExtensionAssociationId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::DeleteExtensionAssociation>

Returns: nothing

Deletes an extension association. This action doesn't delete extensions
defined in the association.


=head2 DeleteHostedConfigurationVersion

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::AppConfig::DeleteHostedConfigurationVersion>

Returns: nothing

Deletes a version of a configuration from the AppConfig hosted
configuration store.


=head2 GetAccountSettings

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::AppConfig::GetAccountSettings>

Returns: a L<Paws::AppConfig::AccountSettings> instance

Returns information about the status of the C<DeletionProtection>
parameter.


=head2 GetApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::GetApplication>

Returns: a L<Paws::AppConfig::Application> instance

Retrieves information about an application.


=head2 GetConfiguration

=over

=item Application => Str

=item ClientId => Str

=item Configuration => Str

=item Environment => Str

=item [ClientConfigurationVersion => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::GetConfiguration>

Returns: a L<Paws::AppConfig::Configuration> instance

(Deprecated) Retrieves the latest deployed configuration.

Note the following important information.

=over

=item *

This API action is deprecated. Calls to receive configuration data
should use the StartConfigurationSession
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html)
and GetLatestConfiguration
(https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html)
APIs instead.

=item *

GetConfiguration is a priced call. For more information, see Pricing
(https://aws.amazon.com/systems-manager/pricing/).

=back



=head2 GetConfigurationProfile

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::GetConfigurationProfile>

Returns: a L<Paws::AppConfig::ConfigurationProfile> instance

Retrieves information about a configuration profile.


=head2 GetDeployment

=over

=item ApplicationId => Str

=item DeploymentNumber => Int

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::GetDeployment>

Returns: a L<Paws::AppConfig::Deployment> instance

Retrieves information about a configuration deployment.


=head2 GetDeploymentStrategy

=over

=item DeploymentStrategyId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::GetDeploymentStrategy>

Returns: a L<Paws::AppConfig::DeploymentStrategy> instance

Retrieves information about a deployment strategy. A deployment
strategy defines important criteria for rolling out your configuration
to the designated targets. A deployment strategy includes the overall
duration required, a percentage of targets to receive the deployment
during each interval, an algorithm that defines how percentage grows,
and bake time.


=head2 GetEnvironment

=over

=item ApplicationId => Str

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::GetEnvironment>

Returns: a L<Paws::AppConfig::Environment> instance

Retrieves information about an environment. An environment is a
deployment group of AppConfig applications, such as applications in a
C<Production> environment or in an C<EU_Region> environment. Each
configuration deployment targets an environment. You can enable one or
more Amazon CloudWatch alarms for an environment. If an alarm is
triggered during a deployment, AppConfig roles back the configuration.


=head2 GetExtension

=over

=item ExtensionIdentifier => Str

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::AppConfig::GetExtension>

Returns: a L<Paws::AppConfig::Extension> instance

Returns information about an AppConfig extension.


=head2 GetExtensionAssociation

=over

=item ExtensionAssociationId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::GetExtensionAssociation>

Returns: a L<Paws::AppConfig::ExtensionAssociation> instance

Returns information about an AppConfig extension association. For more
information about extensions and associations, see Extending workflows
(https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
in the I<AppConfig User Guide>.


=head2 GetHostedConfigurationVersion

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::AppConfig::GetHostedConfigurationVersion>

Returns: a L<Paws::AppConfig::HostedConfigurationVersion> instance

Retrieves information about a specific configuration version.


=head2 ListApplications

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListApplications>

Returns: a L<Paws::AppConfig::Applications> instance

Lists all applications in your Amazon Web Services account.


=head2 ListConfigurationProfiles

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListConfigurationProfiles>

Returns: a L<Paws::AppConfig::ConfigurationProfiles> instance

Lists the configuration profiles for an application.


=head2 ListDeployments

=over

=item ApplicationId => Str

=item EnvironmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListDeployments>

Returns: a L<Paws::AppConfig::Deployments> instance

Lists the deployments for an environment in descending deployment
number order.


=head2 ListDeploymentStrategies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListDeploymentStrategies>

Returns: a L<Paws::AppConfig::DeploymentStrategies> instance

Lists deployment strategies.


=head2 ListEnvironments

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListEnvironments>

Returns: a L<Paws::AppConfig::Environments> instance

Lists the environments for an application.


=head2 ListExtensionAssociations

=over

=item [ExtensionIdentifier => Str]

=item [ExtensionVersionNumber => Int]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceIdentifier => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListExtensionAssociations>

Returns: a L<Paws::AppConfig::ExtensionAssociations> instance

Lists all AppConfig extension associations in the account. For more
information about extensions and associations, see Extending workflows
(https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
in the I<AppConfig User Guide>.


=head2 ListExtensions

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListExtensions>

Returns: a L<Paws::AppConfig::Extensions> instance

Lists all custom and Amazon Web Services authored AppConfig extensions
in the account. For more information about extensions, see Extending
workflows
(https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
in the I<AppConfig User Guide>.


=head2 ListHostedConfigurationVersions

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [VersionLabel => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListHostedConfigurationVersions>

Returns: a L<Paws::AppConfig::HostedConfigurationVersions> instance

Lists configurations stored in the AppConfig hosted configuration store
by version.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::ListTagsForResource>

Returns: a L<Paws::AppConfig::ResourceTags> instance

Retrieves the list of key-value tags assigned to the resource.


=head2 StartDeployment

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str

=item ConfigurationVersion => Str

=item DeploymentStrategyId => Str

=item EnvironmentId => Str

=item [Description => Str]

=item [DynamicExtensionParameters => L<Paws::AppConfig::DynamicParameterMap>]

=item [KmsKeyIdentifier => Str]

=item [Tags => L<Paws::AppConfig::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppConfig::StartDeployment>

Returns: a L<Paws::AppConfig::Deployment> instance

Starts a deployment.


=head2 StopDeployment

=over

=item ApplicationId => Str

=item DeploymentNumber => Int

=item EnvironmentId => Str

=item [AllowRevert => Bool]


=back

Each argument is described in detail in: L<Paws::AppConfig::StopDeployment>

Returns: a L<Paws::AppConfig::Deployment> instance

Stops a deployment. This API action works only on deployments that have
a status of C<DEPLOYING>, unless an C<AllowRevert> parameter is
supplied. If the C<AllowRevert> parameter is supplied, the status of an
in-progress deployment will be C<ROLLED_BACK>. The status of a
completed deployment will be C<REVERTED>. AppConfig only allows a
revert within 72 hours of deployment completion.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::AppConfig::TagMap>


=back

Each argument is described in detail in: L<Paws::AppConfig::TagResource>

Returns: nothing

Assigns metadata to an AppConfig resource. Tags help organize and
categorize your AppConfig resources. Each tag consists of a key and an
optional value, both of which you define. You can specify a maximum of
50 tags for a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppConfig::UntagResource>

Returns: nothing

Deletes a tag key and value from an AppConfig resource.


=head2 UpdateAccountSettings

=over

=item [DeletionProtection => L<Paws::AppConfig::DeletionProtectionSettings>]


=back

Each argument is described in detail in: L<Paws::AppConfig::UpdateAccountSettings>

Returns: a L<Paws::AppConfig::AccountSettings> instance

Updates the value of the C<DeletionProtection> parameter.


=head2 UpdateApplication

=over

=item ApplicationId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::UpdateApplication>

Returns: a L<Paws::AppConfig::Application> instance

Updates an application.


=head2 UpdateConfigurationProfile

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str

=item [Description => Str]

=item [KmsKeyIdentifier => Str]

=item [Name => Str]

=item [RetrievalRoleArn => Str]

=item [Validators => ArrayRef[L<Paws::AppConfig::Validator>]]


=back

Each argument is described in detail in: L<Paws::AppConfig::UpdateConfigurationProfile>

Returns: a L<Paws::AppConfig::ConfigurationProfile> instance

Updates a configuration profile.


=head2 UpdateDeploymentStrategy

=over

=item DeploymentStrategyId => Str

=item [DeploymentDurationInMinutes => Int]

=item [Description => Str]

=item [FinalBakeTimeInMinutes => Int]

=item [GrowthFactor => Num]

=item [GrowthType => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::UpdateDeploymentStrategy>

Returns: a L<Paws::AppConfig::DeploymentStrategy> instance

Updates a deployment strategy.


=head2 UpdateEnvironment

=over

=item ApplicationId => Str

=item EnvironmentId => Str

=item [Description => Str]

=item [Monitors => ArrayRef[L<Paws::AppConfig::Monitor>]]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::UpdateEnvironment>

Returns: a L<Paws::AppConfig::Environment> instance

Updates an environment.


=head2 UpdateExtension

=over

=item ExtensionIdentifier => Str

=item [Actions => L<Paws::AppConfig::ActionsMap>]

=item [Description => Str]

=item [Parameters => L<Paws::AppConfig::ParameterMap>]

=item [VersionNumber => Int]


=back

Each argument is described in detail in: L<Paws::AppConfig::UpdateExtension>

Returns: a L<Paws::AppConfig::Extension> instance

Updates an AppConfig extension. For more information about extensions,
see Extending workflows
(https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
in the I<AppConfig User Guide>.


=head2 UpdateExtensionAssociation

=over

=item ExtensionAssociationId => Str

=item [Parameters => L<Paws::AppConfig::ParameterValueMap>]


=back

Each argument is described in detail in: L<Paws::AppConfig::UpdateExtensionAssociation>

Returns: a L<Paws::AppConfig::ExtensionAssociation> instance

Updates an association. For more information about extensions and
associations, see Extending workflows
(https://docs.aws.amazon.com/appconfig/latest/userguide/working-with-appconfig-extensions.html)
in the I<AppConfig User Guide>.


=head2 ValidateConfiguration

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str

=item ConfigurationVersion => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::ValidateConfiguration>

Returns: nothing

Uses the validators in a configuration profile to validate a
configuration.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplications(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllApplications([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::AppConfig::Applications> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfigurationProfiles(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str, Type => Str])

=head2 ListAllConfigurationProfiles(ApplicationId => Str, [MaxResults => Int, NextToken => Str, Type => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::AppConfig::ConfigurationProfiles> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeployments(sub { },ApplicationId => Str, EnvironmentId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDeployments(ApplicationId => Str, EnvironmentId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::AppConfig::Deployments> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDeploymentStrategies(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDeploymentStrategies([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::AppConfig::DeploymentStrategies> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironments(sub { },ApplicationId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironments(ApplicationId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::AppConfig::Environments> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExtensionAssociations(sub { },[ExtensionIdentifier => Str, ExtensionVersionNumber => Int, MaxResults => Int, NextToken => Str, ResourceIdentifier => Str])

=head2 ListAllExtensionAssociations([ExtensionIdentifier => Str, ExtensionVersionNumber => Int, MaxResults => Int, NextToken => Str, ResourceIdentifier => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::AppConfig::ExtensionAssociations> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllExtensions(sub { },[MaxResults => Int, Name => Str, NextToken => Str])

=head2 ListAllExtensions([MaxResults => Int, Name => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::AppConfig::Extensions> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllHostedConfigurationVersions(sub { },ApplicationId => Str, ConfigurationProfileId => Str, [MaxResults => Int, NextToken => Str, VersionLabel => Str])

=head2 ListAllHostedConfigurationVersions(ApplicationId => Str, ConfigurationProfileId => Str, [MaxResults => Int, NextToken => Str, VersionLabel => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::AppConfig::HostedConfigurationVersions> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


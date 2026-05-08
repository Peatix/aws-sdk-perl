package Paws::SSMQuickSetup;
  use Moose;
  sub service { 'ssm-quicksetup' }
  sub signing_name { 'ssm-quicksetup' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateConfigurationManager {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::CreateConfigurationManager', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationManager {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::DeleteConfigurationManager', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::GetConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfigurationManager {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::GetConfigurationManager', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::GetServiceSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationManagers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::ListConfigurationManagers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::ListConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQuickSetupTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::ListQuickSetupTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationDefinition {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::UpdateConfigurationDefinition', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationManager {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::UpdateConfigurationManager', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSMQuickSetup::UpdateServiceSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllConfigurationManagers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurationManagers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConfigurationManagers(@_, StartingToken => $next_result->NextToken);
        push @{ $result->ConfigurationManagersList }, @{ $next_result->ConfigurationManagersList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConfigurationManagersList') foreach (@{ $result->ConfigurationManagersList });
        $result = $self->ListConfigurationManagers(@_, StartingToken => $result->NextToken);
      }
      $callback->($_ => 'ConfigurationManagersList') foreach (@{ $result->ConfigurationManagersList });
    }

    return undef
  }
  sub ListAllConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListConfigurations(@_, StartingToken => $next_result->NextToken);
        push @{ $result->ConfigurationsList }, @{ $next_result->ConfigurationsList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ConfigurationsList') foreach (@{ $result->ConfigurationsList });
        $result = $self->ListConfigurations(@_, StartingToken => $result->NextToken);
      }
      $callback->($_ => 'ConfigurationsList') foreach (@{ $result->ConfigurationsList });
    }

    return undef
  }


  sub operations { qw/CreateConfigurationManager DeleteConfigurationManager GetConfiguration GetConfigurationManager GetServiceSettings ListConfigurationManagers ListConfigurations ListQuickSetupTypes ListTagsForResource TagResource UntagResource UpdateConfigurationDefinition UpdateConfigurationManager UpdateServiceSettings / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup - Perl Interface to AWS AWS Systems Manager QuickSetup

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSMQuickSetup');
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

Quick Setup helps you quickly configure frequently used services and
features with recommended best practices. Quick Setup simplifies
setting up services, including Systems Manager, by automating common or
recommended tasks.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup-2018-05-10>


=head1 METHODS

=head2 CreateConfigurationManager

=over

=item ConfigurationDefinitions => ArrayRef[L<Paws::SSMQuickSetup::ConfigurationDefinitionInput>]

=item [Description => Str]

=item [Name => Str]

=item [Tags => L<Paws::SSMQuickSetup::TagsMap>]


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::CreateConfigurationManager>

Returns: a L<Paws::SSMQuickSetup::CreateConfigurationManagerOutput> instance

Creates a Quick Setup configuration manager resource. This object is a
collection of desired state configurations for multiple configuration
definitions and summaries describing the deployments of those
definitions.


=head2 DeleteConfigurationManager

=over

=item ManagerArn => Str


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::DeleteConfigurationManager>

Returns: nothing

Deletes a configuration manager.


=head2 GetConfiguration

=over

=item ConfigurationId => Str


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::GetConfiguration>

Returns: a L<Paws::SSMQuickSetup::GetConfigurationOutput> instance

Returns details about the specified configuration.


=head2 GetConfigurationManager

=over

=item ManagerArn => Str


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::GetConfigurationManager>

Returns: a L<Paws::SSMQuickSetup::GetConfigurationManagerOutput> instance

Returns a configuration manager.


=head2 GetServiceSettings

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::GetServiceSettings>

Returns: a L<Paws::SSMQuickSetup::GetServiceSettingsOutput> instance

Returns settings configured for Quick Setup in the requesting Amazon
Web Services account and Amazon Web Services Region.


=head2 ListConfigurationManagers

=over

=item [Filters => ArrayRef[L<Paws::SSMQuickSetup::Filter>]]

=item [MaxItems => Int]

=item [StartingToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::ListConfigurationManagers>

Returns: a L<Paws::SSMQuickSetup::ListConfigurationManagersOutput> instance

Returns Quick Setup configuration managers.


=head2 ListConfigurations

=over

=item [ConfigurationDefinitionId => Str]

=item [Filters => ArrayRef[L<Paws::SSMQuickSetup::Filter>]]

=item [ManagerArn => Str]

=item [MaxItems => Int]

=item [StartingToken => Str]


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::ListConfigurations>

Returns: a L<Paws::SSMQuickSetup::ListConfigurationsOutput> instance

Returns configurations deployed by Quick Setup in the requesting Amazon
Web Services account and Amazon Web Services Region.


=head2 ListQuickSetupTypes

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::ListQuickSetupTypes>

Returns: a L<Paws::SSMQuickSetup::ListQuickSetupTypesOutput> instance

Returns the available Quick Setup types.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::ListTagsForResource>

Returns: a L<Paws::SSMQuickSetup::ListTagsForResourceResponse> instance

Returns tags assigned to the resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::SSMQuickSetup::TagsMap>


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::TagResource>

Returns: nothing

Assigns key-value pairs of metadata to Amazon Web Services resources.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::UntagResource>

Returns: nothing

Removes tags from the specified resource.


=head2 UpdateConfigurationDefinition

=over

=item Id => Str

=item ManagerArn => Str

=item [LocalDeploymentAdministrationRoleArn => Str]

=item [LocalDeploymentExecutionRoleName => Str]

=item [Parameters => L<Paws::SSMQuickSetup::ConfigurationParametersMap>]

=item [TypeVersion => Str]


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::UpdateConfigurationDefinition>

Returns: nothing

Updates a Quick Setup configuration definition.


=head2 UpdateConfigurationManager

=over

=item ManagerArn => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::UpdateConfigurationManager>

Returns: nothing

Updates a Quick Setup configuration manager.


=head2 UpdateServiceSettings

=over

=item [ExplorerEnablingRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::SSMQuickSetup::UpdateServiceSettings>

Returns: nothing

Updates settings configured for Quick Setup.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllConfigurationManagers(sub { },[Filters => ArrayRef[L<Paws::SSMQuickSetup::Filter>], MaxItems => Int, StartingToken => Str])

=head2 ListAllConfigurationManagers([Filters => ArrayRef[L<Paws::SSMQuickSetup::Filter>], MaxItems => Int, StartingToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConfigurationManagersList, passing the object as the first parameter, and the string 'ConfigurationManagersList' as the second parameter 

If not, it will return a a L<Paws::SSMQuickSetup::ListConfigurationManagersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConfigurations(sub { },[ConfigurationDefinitionId => Str, Filters => ArrayRef[L<Paws::SSMQuickSetup::Filter>], ManagerArn => Str, MaxItems => Int, StartingToken => Str])

=head2 ListAllConfigurations([ConfigurationDefinitionId => Str, Filters => ArrayRef[L<Paws::SSMQuickSetup::Filter>], ManagerArn => Str, MaxItems => Int, StartingToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ConfigurationsList, passing the object as the first parameter, and the string 'ConfigurationsList' as the second parameter 

If not, it will return a a L<Paws::SSMQuickSetup::ListConfigurationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


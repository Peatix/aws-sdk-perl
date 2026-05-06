package Paws::KafkaConnect;
  use Moose;
  sub service { 'kafkaconnect' }
  sub signing_name { 'kafkaconnect' }
  sub version { '2021-09-14' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::CreateConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomPlugin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::CreateCustomPlugin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateWorkerConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::CreateWorkerConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::DeleteConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomPlugin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::DeleteCustomPlugin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteWorkerConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::DeleteWorkerConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::DescribeConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConnectorOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::DescribeConnectorOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomPlugin {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::DescribeCustomPlugin', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeWorkerConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::DescribeWorkerConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnectorOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::ListConnectorOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::ListConnectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCustomPlugins {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::ListCustomPlugins', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListWorkerConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::ListWorkerConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConnector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KafkaConnect::UpdateConnector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllConnectorOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConnectorOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConnectorOperations(@_, nextToken => $next_result->nextToken);
        push @{ $result->connectorOperations }, @{ $next_result->connectorOperations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'connectorOperations') foreach (@{ $result->connectorOperations });
        $result = $self->ListConnectorOperations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'connectorOperations') foreach (@{ $result->connectorOperations });
    }

    return undef
  }
  sub ListAllConnectors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListConnectors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListConnectors(@_, nextToken => $next_result->nextToken);
        push @{ $result->connectors }, @{ $next_result->connectors };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'connectors') foreach (@{ $result->connectors });
        $result = $self->ListConnectors(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'connectors') foreach (@{ $result->connectors });
    }

    return undef
  }
  sub ListAllCustomPlugins {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCustomPlugins(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCustomPlugins(@_, nextToken => $next_result->nextToken);
        push @{ $result->customPlugins }, @{ $next_result->customPlugins };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'customPlugins') foreach (@{ $result->customPlugins });
        $result = $self->ListCustomPlugins(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'customPlugins') foreach (@{ $result->customPlugins });
    }

    return undef
  }
  sub ListAllWorkerConfigurations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListWorkerConfigurations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListWorkerConfigurations(@_, nextToken => $next_result->nextToken);
        push @{ $result->workerConfigurations }, @{ $next_result->workerConfigurations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workerConfigurations') foreach (@{ $result->workerConfigurations });
        $result = $self->ListWorkerConfigurations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workerConfigurations') foreach (@{ $result->workerConfigurations });
    }

    return undef
  }


  sub operations { qw/CreateConnector CreateCustomPlugin CreateWorkerConfiguration DeleteConnector DeleteCustomPlugin DeleteWorkerConfiguration DescribeConnector DescribeConnectorOperation DescribeCustomPlugin DescribeWorkerConfiguration ListConnectorOperations ListConnectors ListCustomPlugins ListTagsForResource ListWorkerConfigurations TagResource UntagResource UpdateConnector / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect - Perl Interface to AWS Managed Streaming for Kafka Connect

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KafkaConnect');
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



For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateConnector

=over

=item Capacity => L<Paws::KafkaConnect::Capacity>

=item ConnectorConfiguration => L<Paws::KafkaConnect::ConnectorConfiguration>

=item ConnectorName => Str

=item KafkaCluster => L<Paws::KafkaConnect::KafkaCluster>

=item KafkaClusterClientAuthentication => L<Paws::KafkaConnect::KafkaClusterClientAuthentication>

=item KafkaClusterEncryptionInTransit => L<Paws::KafkaConnect::KafkaClusterEncryptionInTransit>

=item KafkaConnectVersion => Str

=item Plugins => ArrayRef[L<Paws::KafkaConnect::Plugin>]

=item ServiceExecutionRoleArn => Str

=item [ConnectorDescription => Str]

=item [LogDelivery => L<Paws::KafkaConnect::LogDelivery>]

=item [Tags => L<Paws::KafkaConnect::Tags>]

=item [WorkerConfiguration => L<Paws::KafkaConnect::WorkerConfiguration>]


=back

Each argument is described in detail in: L<Paws::KafkaConnect::CreateConnector>

Returns: a L<Paws::KafkaConnect::CreateConnectorResponse> instance

Creates a connector using the specified properties.


=head2 CreateCustomPlugin

=over

=item ContentType => Str

=item Location => L<Paws::KafkaConnect::CustomPluginLocation>

=item Name => Str

=item [Description => Str]

=item [Tags => L<Paws::KafkaConnect::Tags>]


=back

Each argument is described in detail in: L<Paws::KafkaConnect::CreateCustomPlugin>

Returns: a L<Paws::KafkaConnect::CreateCustomPluginResponse> instance

Creates a custom plugin using the specified properties.


=head2 CreateWorkerConfiguration

=over

=item Name => Str

=item PropertiesFileContent => Str

=item [Description => Str]

=item [Tags => L<Paws::KafkaConnect::Tags>]


=back

Each argument is described in detail in: L<Paws::KafkaConnect::CreateWorkerConfiguration>

Returns: a L<Paws::KafkaConnect::CreateWorkerConfigurationResponse> instance

Creates a worker configuration using the specified properties.


=head2 DeleteConnector

=over

=item ConnectorArn => Str

=item [CurrentVersion => Str]


=back

Each argument is described in detail in: L<Paws::KafkaConnect::DeleteConnector>

Returns: a L<Paws::KafkaConnect::DeleteConnectorResponse> instance

Deletes the specified connector.


=head2 DeleteCustomPlugin

=over

=item CustomPluginArn => Str


=back

Each argument is described in detail in: L<Paws::KafkaConnect::DeleteCustomPlugin>

Returns: a L<Paws::KafkaConnect::DeleteCustomPluginResponse> instance

Deletes a custom plugin.


=head2 DeleteWorkerConfiguration

=over

=item WorkerConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::KafkaConnect::DeleteWorkerConfiguration>

Returns: a L<Paws::KafkaConnect::DeleteWorkerConfigurationResponse> instance

Deletes the specified worker configuration.


=head2 DescribeConnector

=over

=item ConnectorArn => Str


=back

Each argument is described in detail in: L<Paws::KafkaConnect::DescribeConnector>

Returns: a L<Paws::KafkaConnect::DescribeConnectorResponse> instance

Returns summary information about the connector.


=head2 DescribeConnectorOperation

=over

=item ConnectorOperationArn => Str


=back

Each argument is described in detail in: L<Paws::KafkaConnect::DescribeConnectorOperation>

Returns: a L<Paws::KafkaConnect::DescribeConnectorOperationResponse> instance

Returns information about the specified connector's operations.


=head2 DescribeCustomPlugin

=over

=item CustomPluginArn => Str


=back

Each argument is described in detail in: L<Paws::KafkaConnect::DescribeCustomPlugin>

Returns: a L<Paws::KafkaConnect::DescribeCustomPluginResponse> instance

A summary description of the custom plugin.


=head2 DescribeWorkerConfiguration

=over

=item WorkerConfigurationArn => Str


=back

Each argument is described in detail in: L<Paws::KafkaConnect::DescribeWorkerConfiguration>

Returns: a L<Paws::KafkaConnect::DescribeWorkerConfigurationResponse> instance

Returns information about a worker configuration.


=head2 ListConnectorOperations

=over

=item ConnectorArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::KafkaConnect::ListConnectorOperations>

Returns: a L<Paws::KafkaConnect::ListConnectorOperationsResponse> instance

Lists information about a connector's operation(s).


=head2 ListConnectors

=over

=item [ConnectorNamePrefix => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::KafkaConnect::ListConnectors>

Returns: a L<Paws::KafkaConnect::ListConnectorsResponse> instance

Returns a list of all the connectors in this account and Region. The
list is limited to connectors whose name starts with the specified
prefix. The response also includes a description of each of the listed
connectors.


=head2 ListCustomPlugins

=over

=item [MaxResults => Int]

=item [NamePrefix => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::KafkaConnect::ListCustomPlugins>

Returns: a L<Paws::KafkaConnect::ListCustomPluginsResponse> instance

Returns a list of all of the custom plugins in this account and Region.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::KafkaConnect::ListTagsForResource>

Returns: a L<Paws::KafkaConnect::ListTagsForResourceResponse> instance

Lists all the tags attached to the specified resource.


=head2 ListWorkerConfigurations

=over

=item [MaxResults => Int]

=item [NamePrefix => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::KafkaConnect::ListWorkerConfigurations>

Returns: a L<Paws::KafkaConnect::ListWorkerConfigurationsResponse> instance

Returns a list of all of the worker configurations in this account and
Region.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::KafkaConnect::Tags>


=back

Each argument is described in detail in: L<Paws::KafkaConnect::TagResource>

Returns: a L<Paws::KafkaConnect::TagResourceResponse> instance

Attaches tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::KafkaConnect::UntagResource>

Returns: a L<Paws::KafkaConnect::UntagResourceResponse> instance

Removes tags from the specified resource.


=head2 UpdateConnector

=over

=item ConnectorArn => Str

=item CurrentVersion => Str

=item [Capacity => L<Paws::KafkaConnect::CapacityUpdate>]

=item [ConnectorConfiguration => L<Paws::KafkaConnect::ConnectorConfigurationUpdate>]


=back

Each argument is described in detail in: L<Paws::KafkaConnect::UpdateConnector>

Returns: a L<Paws::KafkaConnect::UpdateConnectorResponse> instance

Updates the specified connector.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllConnectorOperations(sub { },ConnectorArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllConnectorOperations(ConnectorArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - connectorOperations, passing the object as the first parameter, and the string 'connectorOperations' as the second parameter 

If not, it will return a a L<Paws::KafkaConnect::ListConnectorOperationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllConnectors(sub { },[ConnectorNamePrefix => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllConnectors([ConnectorNamePrefix => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - connectors, passing the object as the first parameter, and the string 'connectors' as the second parameter 

If not, it will return a a L<Paws::KafkaConnect::ListConnectorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCustomPlugins(sub { },[MaxResults => Int, NamePrefix => Str, NextToken => Str])

=head2 ListAllCustomPlugins([MaxResults => Int, NamePrefix => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - customPlugins, passing the object as the first parameter, and the string 'customPlugins' as the second parameter 

If not, it will return a a L<Paws::KafkaConnect::ListCustomPluginsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllWorkerConfigurations(sub { },[MaxResults => Int, NamePrefix => Str, NextToken => Str])

=head2 ListAllWorkerConfigurations([MaxResults => Int, NamePrefix => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workerConfigurations, passing the object as the first parameter, and the string 'workerConfigurations' as the second parameter 

If not, it will return a a L<Paws::KafkaConnect::ListWorkerConfigurationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


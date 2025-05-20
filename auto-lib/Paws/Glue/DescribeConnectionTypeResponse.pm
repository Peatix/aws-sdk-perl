
package Paws::Glue::DescribeConnectionTypeResponse;
  use Moose;
  has AthenaConnectionProperties => (is => 'ro', isa => 'Paws::Glue::PropertiesMap');
  has AuthenticationConfiguration => (is => 'ro', isa => 'Paws::Glue::AuthConfiguration');
  has Capabilities => (is => 'ro', isa => 'Paws::Glue::Capabilities');
  has ComputeEnvironmentConfigurations => (is => 'ro', isa => 'Paws::Glue::ComputeEnvironmentConfigurationMap');
  has ConnectionOptions => (is => 'ro', isa => 'Paws::Glue::PropertiesMap');
  has ConnectionProperties => (is => 'ro', isa => 'Paws::Glue::PropertiesMap');
  has ConnectionType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has PhysicalConnectionRequirements => (is => 'ro', isa => 'Paws::Glue::PropertiesMap');
  has PythonConnectionProperties => (is => 'ro', isa => 'Paws::Glue::PropertiesMap');
  has SparkConnectionProperties => (is => 'ro', isa => 'Paws::Glue::PropertiesMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DescribeConnectionTypeResponse

=head1 ATTRIBUTES


=head2 AthenaConnectionProperties => L<Paws::Glue::PropertiesMap>

Connection properties specific to the Athena compute environment.


=head2 AuthenticationConfiguration => L<Paws::Glue::AuthConfiguration>

The type of authentication used for the connection.


=head2 Capabilities => L<Paws::Glue::Capabilities>

The supported authentication types, data interface types (compute
environments), and data operations of the connector.


=head2 ComputeEnvironmentConfigurations => L<Paws::Glue::ComputeEnvironmentConfigurationMap>

The compute environments that are supported by the connection.


=head2 ConnectionOptions => L<Paws::Glue::PropertiesMap>

Returns properties that can be set when creating a connection in the
C<ConnectionInput.ConnectionProperties>. C<ConnectionOptions> defines
parameters that can be set in a Spark ETL script in the connection
options map passed to a dataframe.


=head2 ConnectionProperties => L<Paws::Glue::PropertiesMap>

Connection properties which are common across compute environments.


=head2 ConnectionType => Str

The name of the connection type.


=head2 Description => Str

A description of the connection type.


=head2 PhysicalConnectionRequirements => L<Paws::Glue::PropertiesMap>

Physical requirements for a connection, such as VPC, Subnet and
Security Group specifications.


=head2 PythonConnectionProperties => L<Paws::Glue::PropertiesMap>

Connection properties specific to the Python compute environment.


=head2 SparkConnectionProperties => L<Paws::Glue::PropertiesMap>

Connection properties specific to the Spark compute environment.


=head2 _request_id => Str


=cut

1;
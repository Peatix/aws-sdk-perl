
package Paws::GroundStation::RegisterAgent;
  use Moose;
  has AgentDetails => (is => 'ro', isa => 'Paws::GroundStation::AgentDetails', traits => ['NameInRequest'], request_name => 'agentDetails', required => 1);
  has DiscoveryData => (is => 'ro', isa => 'Paws::GroundStation::DiscoveryData', traits => ['NameInRequest'], request_name => 'discoveryData', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterAgent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agent');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::RegisterAgentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::RegisterAgent - Arguments for method RegisterAgent on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterAgent on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method RegisterAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterAgent.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $RegisterAgentResponse = $groundstation->RegisterAgent(
      AgentDetails => {
        AgentVersion      => 'MyVersionString',    # min: 1, max: 64
        ComponentVersions => [
          {
            ComponentType => 'MyComponentTypeString',
            Versions      => [
              'MyVersionString', ...    # min: 1, max: 64
            ],    # min: 1, max: 20

          },
          ...
        ],    # min: 1, max: 20
        InstanceId       => 'MyInstanceId',      # min: 10, max: 64
        InstanceType     => 'MyInstanceType',    # min: 1, max: 64
        AgentCpuCores    => [ 1, ... ],          # max: 256; OPTIONAL
        ReservedCpuCores => [ 1, ... ],          # max: 256; OPTIONAL
      },
      DiscoveryData => {
        CapabilityArns     => [ 'MyCapabilityArn', ... ],    # min: 1, max: 20
        PrivateIpAddresses => [
          'MyIpV4Address', ...                               # min: 7, max: 16
        ],    # min: 1, max: 20
        PublicIpAddresses => [
          'MyIpV4Address', ...    # min: 7, max: 16
        ],    # min: 1, max: 20

      },
      Tags => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $AgentId = $RegisterAgentResponse->AgentId;

    # Returns a L<Paws::GroundStation::RegisterAgentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/RegisterAgent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentDetails => L<Paws::GroundStation::AgentDetails>

Detailed information about the agent being registered.



=head2 B<REQUIRED> DiscoveryData => L<Paws::GroundStation::DiscoveryData>

Data for associating an agent with the capabilities it is managing.



=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags assigned to an C<Agent>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterAgent in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


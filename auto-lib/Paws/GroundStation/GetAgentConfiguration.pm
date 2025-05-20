
package Paws::GroundStation::GetAgentConfiguration;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'agentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAgentConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agent/{agentId}/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::GetAgentConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetAgentConfiguration - Arguments for method GetAgentConfiguration on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAgentConfiguration on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method GetAgentConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAgentConfiguration.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $GetAgentConfigurationResponse = $groundstation->GetAgentConfiguration(
      AgentId => 'MyUuid',

    );

    # Results:
    my $AgentId         = $GetAgentConfigurationResponse->AgentId;
    my $TaskingDocument = $GetAgentConfigurationResponse->TaskingDocument;

    # Returns a L<Paws::GroundStation::GetAgentConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/GetAgentConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

UUID of agent to get configuration information for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAgentConfiguration in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


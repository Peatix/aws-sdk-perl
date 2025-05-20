
package Paws::NetworkFirewall::StartFlowFlush;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has FirewallArn => (is => 'ro', isa => 'Str', required => 1);
  has FlowFilters => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::FlowFilter]', required => 1);
  has MinimumFlowAgeInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartFlowFlush');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::StartFlowFlushResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::StartFlowFlush - Arguments for method StartFlowFlush on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFlowFlush on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method StartFlowFlush.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFlowFlush.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $StartFlowFlushResponse = $network -firewall->StartFlowFlush(
      FirewallArn => 'MyResourceArn',
      FlowFilters => [
        {
          DestinationAddress => {
            AddressDefinition => 'MyAddressDefinition',    # min: 1, max: 255

          },    # OPTIONAL
          DestinationPort => 'MyPort',    # min: 1, max: 1024; OPTIONAL
          Protocols       => [
            'MyProtocolString', ...       # min: 1, max: 12
          ],    # OPTIONAL
          SourceAddress => {
            AddressDefinition => 'MyAddressDefinition',    # min: 1, max: 255

          },    # OPTIONAL
          SourcePort => 'MyPort',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],
      AvailabilityZone        => 'MyAvailabilityZone',    # OPTIONAL
      MinimumFlowAgeInSeconds => 1,                       # OPTIONAL
    );

    # Results:
    my $FirewallArn         = $StartFlowFlushResponse->FirewallArn;
    my $FlowOperationId     = $StartFlowFlushResponse->FlowOperationId;
    my $FlowOperationStatus = $StartFlowFlushResponse->FlowOperationStatus;

    # Returns a L<Paws::NetworkFirewall::StartFlowFlushResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/StartFlowFlush>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The ID of the Availability Zone where the firewall is located. For
example, C<us-east-2a>.

Defines the scope a flow operation. You can use up to 20 filters to
configure a single flow operation.



=head2 B<REQUIRED> FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.



=head2 B<REQUIRED> FlowFilters => ArrayRef[L<Paws::NetworkFirewall::FlowFilter>]

Defines the scope a flow operation. You can use up to 20 filters to
configure a single flow operation.



=head2 MinimumFlowAgeInSeconds => Int

The reqested C<FlowOperation> ignores flows with an age (in seconds)
lower than C<MinimumFlowAgeInSeconds>. You provide this for start
commands.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFlowFlush in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


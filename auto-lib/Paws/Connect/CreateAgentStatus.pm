
package Paws::Connect::CreateAgentStatus;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DisplayOrder => (is => 'ro', isa => 'Int');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAgentStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/agent-status/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateAgentStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateAgentStatus - Arguments for method CreateAgentStatus on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAgentStatus on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateAgentStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAgentStatus.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateAgentStatusResponse = $connect->CreateAgentStatus(
      InstanceId   => 'MyInstanceId',
      Name         => 'MyAgentStatusName',
      State        => 'ENABLED',
      Description  => 'MyAgentStatusDescription',    # OPTIONAL
      DisplayOrder => 1,                             # OPTIONAL
      Tags         => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AgentStatusARN = $CreateAgentStatusResponse->AgentStatusARN;
    my $AgentStatusId  = $CreateAgentStatusResponse->AgentStatusId;

    # Returns a L<Paws::Connect::CreateAgentStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateAgentStatus>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the status.



=head2 DisplayOrder => Int

The display order of the status.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> Name => Str

The name of the status.



=head2 B<REQUIRED> State => Str

The state of the status.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Tags => L<Paws::Connect::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "Tags": {"key1":"value1", "key2":"value2"} }.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAgentStatus in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Connect::CreateContactFlowVersion;
  use Moose;
  has ContactFlowId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactFlowId', required => 1);
  has ContactFlowVersion => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has FlowContentSha256 => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has LastModifiedRegion => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContactFlowVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact-flows/{InstanceId}/{ContactFlowId}/version');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateContactFlowVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateContactFlowVersion - Arguments for method CreateContactFlowVersion on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContactFlowVersion on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateContactFlowVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContactFlowVersion.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateContactFlowVersionResponse = $connect->CreateContactFlowVersion(
      ContactFlowId      => 'MyARN',
      InstanceId         => 'MyInstanceId',
      ContactFlowVersion => 1,                             # OPTIONAL
      Description        => 'MyContactFlowDescription',    # OPTIONAL
      FlowContentSha256  => 'MyFlowContentSha256',         # OPTIONAL
      LastModifiedRegion => 'MyRegionName',                # OPTIONAL
      LastModifiedTime   => '1970-01-01T01:00:00',         # OPTIONAL
    );

    # Results:
    my $ContactFlowArn = $CreateContactFlowVersionResponse->ContactFlowArn;
    my $Version        = $CreateContactFlowVersionResponse->Version;

    # Returns a L<Paws::Connect::CreateContactFlowVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateContactFlowVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactFlowId => Str

The identifier of the flow.



=head2 ContactFlowVersion => Int

The identifier of the flow version.



=head2 Description => Str

The description of the flow version.



=head2 FlowContentSha256 => Str

Indicates the checksum value of the flow content.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 LastModifiedRegion => Str

The Amazon Web Services Region where this resource was last modified.



=head2 LastModifiedTime => Str

The Amazon Web Services Region where this resource was last modified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContactFlowVersion in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


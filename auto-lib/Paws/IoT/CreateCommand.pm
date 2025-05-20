
package Paws::IoT::CreateCommand;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'commandId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has MandatoryParameters => (is => 'ro', isa => 'ArrayRef[Paws::IoT::CommandParameter]', traits => ['NameInRequest'], request_name => 'mandatoryParameters');
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace');
  has Payload => (is => 'ro', isa => 'Paws::IoT::CommandPayload', traits => ['NameInRequest'], request_name => 'payload');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCommand');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/commands/{commandId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateCommandResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateCommand - Arguments for method CreateCommand on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCommand on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateCommand.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCommand.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateCommandResponse = $iot->CreateCommand(
      CommandId           => 'MyCommandId',
      Description         => 'MyCommandDescription',    # OPTIONAL
      DisplayName         => 'MyDisplayName',           # OPTIONAL
      MandatoryParameters => [
        {
          Name         => 'MyCommandParameterName',     # min: 1, max: 192
          DefaultValue => {
            B   => 1,                                # OPTIONAL
            BIN => 'BlobBinaryParameterValue',       # min: 1; OPTIONAL
            D   => 1,                                # OPTIONAL
            I   => 1,                                # OPTIONAL
            L   => 1,                                # OPTIONAL
            S   => 'MyStringParameterValue',         # min: 1; OPTIONAL
            UL  => 'MyUnsignedLongParameterValue',   # min: 1, max: 20; OPTIONAL
          },    # OPTIONAL
          Description => 'MyCommandParameterDescription',  # max: 2028; OPTIONAL
          Value       => {
            B   => 1,                                # OPTIONAL
            BIN => 'BlobBinaryParameterValue',       # min: 1; OPTIONAL
            D   => 1,                                # OPTIONAL
            I   => 1,                                # OPTIONAL
            L   => 1,                                # OPTIONAL
            S   => 'MyStringParameterValue',         # min: 1; OPTIONAL
            UL  => 'MyUnsignedLongParameterValue',   # min: 1, max: 20; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Namespace => 'AWS-IoT',    # OPTIONAL
      Payload   => {
        Content     => 'BlobCommandPayloadBlob',    # OPTIONAL
        ContentType => 'MyMimeType',                # min: 1; OPTIONAL
      },    # OPTIONAL
      RoleArn => 'MyRoleArn',    # OPTIONAL
      Tags    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CommandArn = $CreateCommandResponse->CommandArn;
    my $CommandId  = $CreateCommandResponse->CommandId;

    # Returns a L<Paws::IoT::CreateCommandResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateCommand>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommandId => Str

A unique identifier for the command. We recommend using UUID.
Alpha-numeric characters, hyphens, and underscores are valid for use
here.



=head2 Description => Str

A short text decription of the command.



=head2 DisplayName => Str

The user-friendly name in the console for the command. This name
doesn't have to be unique. You can update the user-friendly name after
you define it.



=head2 MandatoryParameters => ArrayRef[L<Paws::IoT::CommandParameter>]

A list of parameters that are required by the C<StartCommandExecution>
API. These parameters need to be specified only when using the
C<AWS-IoT-FleetWise> namespace. You can either specify them here or
when running the command using the C<StartCommandExecution> API.



=head2 Namespace => Str

The namespace of the command. The MQTT reserved topics and validations
will be used for command executions according to the namespace setting.

Valid values are: C<"AWS-IoT">, C<"AWS-IoT-FleetWise">

=head2 Payload => L<Paws::IoT::CommandPayload>

The payload object for the command. You must specify this information
when using the C<AWS-IoT> namespace.

You can upload a static payload file from your local storage that
contains the instructions for the device to process. The payload file
can use any format. To make sure that the device correctly interprets
the payload, we recommend you to specify the payload content type.



=head2 RoleArn => Str

The IAM role that you must provide when using the C<AWS-IoT-FleetWise>
namespace. The role grants IoT Device Management the permission to
access IoT FleetWise resources for generating the payload for the
command. This field is not required when you use the C<AWS-IoT>
namespace.



=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Name-value pairs that are used as metadata to manage a command.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCommand in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


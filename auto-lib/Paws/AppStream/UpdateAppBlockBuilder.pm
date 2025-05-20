
package Paws::AppStream::UpdateAppBlockBuilder;
  use Moose;
  has AccessEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::AccessEndpoint]');
  has AttributesToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has EnableDefaultInternetAccess => (is => 'ro', isa => 'Bool');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::AppStream::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAppBlockBuilder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::UpdateAppBlockBuilderResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateAppBlockBuilder - Arguments for method UpdateAppBlockBuilder on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAppBlockBuilder on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method UpdateAppBlockBuilder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAppBlockBuilder.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $UpdateAppBlockBuilderResult = $appstream2->UpdateAppBlockBuilder(
      Name            => 'MyName',
      AccessEndpoints => [
        {
          EndpointType => 'STREAMING',    # values: STREAMING
          VpceId       => 'MyString',     # min: 1; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      AttributesToDelete => [
        'IAM_ROLE_ARN',
        ... # values: IAM_ROLE_ARN, ACCESS_ENDPOINTS, VPC_CONFIGURATION_SECURITY_GROUP_IDS
      ],    # OPTIONAL
      Description                 => 'MyDescription',    # OPTIONAL
      DisplayName                 => 'MyDisplayName',    # OPTIONAL
      EnableDefaultInternetAccess => 1,                  # OPTIONAL
      IamRoleArn                  => 'MyArn',            # OPTIONAL
      InstanceType                => 'MyString',         # OPTIONAL
      Platform                    => 'WINDOWS',          # OPTIONAL
      VpcConfig                   => {
        SecurityGroupIds => [
          'MyString', ...                                # min: 1; OPTIONAL
        ],    # max: 5; OPTIONAL
        SubnetIds => [
          'MyString', ...    # min: 1; OPTIONAL
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AppBlockBuilder = $UpdateAppBlockBuilderResult->AppBlockBuilder;

    # Returns a L<Paws::AppStream::UpdateAppBlockBuilderResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/UpdateAppBlockBuilder>

=head1 ATTRIBUTES


=head2 AccessEndpoints => ArrayRef[L<Paws::AppStream::AccessEndpoint>]

The list of interface VPC endpoint (interface endpoint) objects.
Administrators can connect to the app block builder only through the
specified endpoints.



=head2 AttributesToDelete => ArrayRef[Str|Undef]

The attributes to delete from the app block builder.



=head2 Description => Str

The description of the app block builder.



=head2 DisplayName => Str

The display name of the app block builder.



=head2 EnableDefaultInternetAccess => Bool

Enables or disables default internet access for the app block builder.



=head2 IamRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to apply to the app
block builder. To assume a role, the app block builder calls the AWS
Security Token Service (STS) C<AssumeRole> API operation and passes the
ARN of the role to use. The operation creates a new session with
temporary credentials. AppStream 2.0 retrieves the temporary
credentials and creates the B<appstream_machine_role> credential
profile on the instance.

For more information, see Using an IAM Role to Grant Permissions to
Applications and Scripts Running on AppStream 2.0 Streaming Instances
(https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html)
in the I<Amazon AppStream 2.0 Administration Guide>.



=head2 InstanceType => Str

The instance type to use when launching the app block builder. The
following instance types are available:

=over

=item *

stream.standard.small

=item *

stream.standard.medium

=item *

stream.standard.large

=item *

stream.standard.xlarge

=item *

stream.standard.2xlarge

=back




=head2 B<REQUIRED> Name => Str

The unique name for the app block builder.



=head2 Platform => Str

The platform of the app block builder.

C<WINDOWS_SERVER_2019> is the only valid value.

Valid values are: C<"WINDOWS">, C<"WINDOWS_SERVER_2016">, C<"WINDOWS_SERVER_2019">, C<"WINDOWS_SERVER_2022">, C<"AMAZON_LINUX2">, C<"RHEL8">, C<"ROCKY_LINUX8">

=head2 VpcConfig => L<Paws::AppStream::VpcConfig>

The VPC configuration for the app block builder.

App block builders require that you specify at least two subnets in
different availability zones.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAppBlockBuilder in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


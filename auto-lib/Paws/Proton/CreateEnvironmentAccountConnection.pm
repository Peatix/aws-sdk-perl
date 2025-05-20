
package Paws::Proton::CreateEnvironmentAccountConnection;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has CodebuildRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'codebuildRoleArn' );
  has ComponentRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'componentRoleArn' );
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentName' , required => 1);
  has ManagementAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'managementAccountId' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironmentAccountConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::CreateEnvironmentAccountConnectionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::CreateEnvironmentAccountConnection - Arguments for method CreateEnvironmentAccountConnection on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironmentAccountConnection on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method CreateEnvironmentAccountConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironmentAccountConnection.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $CreateEnvironmentAccountConnectionOutput =
      $proton->CreateEnvironmentAccountConnection(
      EnvironmentName     => 'MyResourceName',
      ManagementAccountId => 'MyAwsAccountId',
      ClientToken         => 'MyClientToken',    # OPTIONAL
      CodebuildRoleArn    => 'MyRoleArn',        # OPTIONAL
      ComponentRoleArn    => 'MyRoleArn',        # OPTIONAL
      RoleArn             => 'MyRoleArn',        # OPTIONAL
      Tags                => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $EnvironmentAccountConnection =
      $CreateEnvironmentAccountConnectionOutput->EnvironmentAccountConnection;

   # Returns a L<Paws::Proton::CreateEnvironmentAccountConnectionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/CreateEnvironmentAccountConnection>

=head1 ATTRIBUTES


=head2 ClientToken => Str

When included, if two identical requests are made with the same client
token, Proton returns the environment account connection that the first
request created.



=head2 CodebuildRoleArn => Str

The Amazon Resource Name (ARN) of an IAM service role in the
environment account. Proton uses this role to provision infrastructure
resources using CodeBuild-based provisioning in the associated
environment account.



=head2 ComponentRoleArn => Str

The Amazon Resource Name (ARN) of the IAM service role that Proton uses
when provisioning directly defined components in the associated
environment account. It determines the scope of infrastructure that a
component can provision in the account.

You must specify C<componentRoleArn> to allow directly defined
components to be associated with any environments running in this
account.

For more information about components, see Proton components
(https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html)
in the I<Proton User Guide>.



=head2 B<REQUIRED> EnvironmentName => Str

The name of the Proton environment that's created in the associated
management account.



=head2 B<REQUIRED> ManagementAccountId => Str

The ID of the management account that accepts or rejects the
environment account connection. You create and manage the Proton
environment in this account. If the management account accepts the
environment account connection, Proton can use the associated IAM role
to provision environment infrastructure resources in the associated
environment account.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM service role that's created
in the environment account. Proton uses this role to provision
infrastructure resources in the associated environment account.



=head2 Tags => ArrayRef[L<Paws::Proton::Tag>]

An optional list of metadata items that you can associate with the
Proton environment account connection. A tag is a key-value pair.

For more information, see Proton resources and tagging
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html) in
the I<Proton User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironmentAccountConnection in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


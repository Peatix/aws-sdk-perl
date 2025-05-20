
package Paws::RedShift::CreateRedshiftIdcApplication;
  use Moose;
  has AuthorizedTokenIssuerList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::AuthorizedTokenIssuer]');
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has IdcDisplayName => (is => 'ro', isa => 'Str', required => 1);
  has IdcInstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has IdentityNamespace => (is => 'ro', isa => 'Str');
  has RedshiftIdcApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceIntegrations => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ServiceIntegrationsUnion]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRedshiftIdcApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CreateRedshiftIdcApplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRedshiftIdcApplicationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateRedshiftIdcApplication - Arguments for method CreateRedshiftIdcApplication on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRedshiftIdcApplication on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateRedshiftIdcApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRedshiftIdcApplication.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $CreateRedshiftIdcApplicationResult =
      $redshift->CreateRedshiftIdcApplication(
      IamRoleArn                 => 'MyString',
      IdcDisplayName             => 'MyIdcDisplayNameString',
      IdcInstanceArn             => 'MyString',
      RedshiftIdcApplicationName => 'MyRedshiftIdcApplicationName',
      AuthorizedTokenIssuerList  => [
        {
          AuthorizedAudiencesList => [
            'MyString', ...    # max: 2147483647
          ],    # OPTIONAL
          TrustedTokenIssuerArn => 'MyString',    # max: 2147483647
        },
        ...
      ],    # OPTIONAL
      IdentityNamespace   => 'MyIdentityNamespaceString',    # OPTIONAL
      ServiceIntegrations => [
        {
          LakeFormation => [
            {
              LakeFormationQuery => {
                Authorization => 'Enabled',    # values: Enabled, Disabled

              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          S3AccessGrants => [
            {
              ReadWriteAccess => {
                Authorization => 'Enabled',    # values: Enabled, Disabled

              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $RedshiftIdcApplication =
      $CreateRedshiftIdcApplicationResult->RedshiftIdcApplication;

    # Returns a L<Paws::RedShift::CreateRedshiftIdcApplicationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateRedshiftIdcApplication>

=head1 ATTRIBUTES


=head2 AuthorizedTokenIssuerList => ArrayRef[L<Paws::RedShift::AuthorizedTokenIssuer>]

The token issuer list for the Amazon Redshift IAM Identity Center
application instance.



=head2 B<REQUIRED> IamRoleArn => Str

The IAM role ARN for the Amazon Redshift IAM Identity Center
application instance. It has the required permissions to be assumed and
invoke the IDC Identity Center API.



=head2 B<REQUIRED> IdcDisplayName => Str

The display name for the Amazon Redshift IAM Identity Center
application instance. It appears in the console.



=head2 B<REQUIRED> IdcInstanceArn => Str

The Amazon resource name (ARN) of the IAM Identity Center instance
where Amazon Redshift creates a new managed application.



=head2 IdentityNamespace => Str

The namespace for the Amazon Redshift IAM Identity Center application
instance. It determines which managed application verifies the
connection token.



=head2 B<REQUIRED> RedshiftIdcApplicationName => Str

The name of the Redshift application in IAM Identity Center.



=head2 ServiceIntegrations => ArrayRef[L<Paws::RedShift::ServiceIntegrationsUnion>]

A collection of service integrations for the Redshift IAM Identity
Center application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRedshiftIdcApplication in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::RedShift::ModifyRedshiftIdcApplication;
  use Moose;
  has AuthorizedTokenIssuerList => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::AuthorizedTokenIssuer]');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has IdcDisplayName => (is => 'ro', isa => 'Str');
  has IdentityNamespace => (is => 'ro', isa => 'Str');
  has RedshiftIdcApplicationArn => (is => 'ro', isa => 'Str', required => 1);
  has ServiceIntegrations => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ServiceIntegrationsUnion]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyRedshiftIdcApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifyRedshiftIdcApplicationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyRedshiftIdcApplicationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyRedshiftIdcApplication - Arguments for method ModifyRedshiftIdcApplication on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyRedshiftIdcApplication on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyRedshiftIdcApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyRedshiftIdcApplication.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ModifyRedshiftIdcApplicationResult =
      $redshift->ModifyRedshiftIdcApplication(
      RedshiftIdcApplicationArn => 'MyString',
      AuthorizedTokenIssuerList => [
        {
          AuthorizedAudiencesList => [
            'MyString', ...    # max: 2147483647
          ],    # OPTIONAL
          TrustedTokenIssuerArn => 'MyString',    # max: 2147483647
        },
        ...
      ],    # OPTIONAL
      IamRoleArn          => 'MyString',                     # OPTIONAL
      IdcDisplayName      => 'MyIdcDisplayNameString',       # OPTIONAL
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
      $ModifyRedshiftIdcApplicationResult->RedshiftIdcApplication;

    # Returns a L<Paws::RedShift::ModifyRedshiftIdcApplicationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyRedshiftIdcApplication>

=head1 ATTRIBUTES


=head2 AuthorizedTokenIssuerList => ArrayRef[L<Paws::RedShift::AuthorizedTokenIssuer>]

The authorized token issuer list for the Amazon Redshift IAM Identity
Center application to change.



=head2 IamRoleArn => Str

The IAM role ARN associated with the Amazon Redshift IAM Identity
Center application to change. It has the required permissions to be
assumed and invoke the IDC Identity Center API.



=head2 IdcDisplayName => Str

The display name for the Amazon Redshift IAM Identity Center
application to change. It appears on the console.



=head2 IdentityNamespace => Str

The namespace for the Amazon Redshift IAM Identity Center application
to change. It determines which managed application verifies the
connection token.



=head2 B<REQUIRED> RedshiftIdcApplicationArn => Str

The ARN for the Redshift application that integrates with IAM Identity
Center.



=head2 ServiceIntegrations => ArrayRef[L<Paws::RedShift::ServiceIntegrationsUnion>]

A collection of service integrations associated with the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyRedshiftIdcApplication in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::RedShift::GetClusterCredentialsWithIAM;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has CustomDomainName => (is => 'ro', isa => 'Str');
  has DbName => (is => 'ro', isa => 'Str');
  has DurationSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetClusterCredentialsWithIAM');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ClusterExtendedCredentials');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetClusterCredentialsWithIAMResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::GetClusterCredentialsWithIAM - Arguments for method GetClusterCredentialsWithIAM on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetClusterCredentialsWithIAM on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method GetClusterCredentialsWithIAM.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetClusterCredentialsWithIAM.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ClusterExtendedCredentials = $redshift->GetClusterCredentialsWithIAM(
      ClusterIdentifier => 'MyString',    # OPTIONAL
      CustomDomainName  => 'MyString',    # OPTIONAL
      DbName            => 'MyString',    # OPTIONAL
      DurationSeconds   => 1,             # OPTIONAL
    );

    # Results:
    my $DbPassword      = $ClusterExtendedCredentials->DbPassword;
    my $DbUser          = $ClusterExtendedCredentials->DbUser;
    my $Expiration      = $ClusterExtendedCredentials->Expiration;
    my $NextRefreshTime = $ClusterExtendedCredentials->NextRefreshTime;

    # Returns a L<Paws::RedShift::ClusterExtendedCredentials> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/GetClusterCredentialsWithIAM>

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

The unique identifier of the cluster that contains the database for
which you are requesting credentials.



=head2 CustomDomainName => Str

The custom domain name for the IAM message cluster credentials.



=head2 DbName => Str

The name of the database for which you are requesting credentials. If
the database name is specified, the IAM policy must allow access to the
resource C<dbname> for the specified database name. If the database
name is not specified, access to all databases is allowed.



=head2 DurationSeconds => Int

The number of seconds until the returned temporary password expires.

Range: 900-3600. Default: 900.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetClusterCredentialsWithIAM in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::RedshiftServerless::GetCredentials;
  use Moose;
  has CustomDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainName' );
  has DbName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbName' );
  has DurationSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'durationSeconds' );
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::GetCredentialsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetCredentials - Arguments for method GetCredentials on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCredentials on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method GetCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCredentials.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $GetCredentialsResponse = $redshift -serverless->GetCredentials(
      CustomDomainName => 'MyCustomDomainName',    # OPTIONAL
      DbName           => 'MyDbName',              # OPTIONAL
      DurationSeconds  => 1,                       # OPTIONAL
      WorkgroupName    => 'MyWorkgroupName',       # OPTIONAL
    );

    # Results:
    my $DbPassword      = $GetCredentialsResponse->DbPassword;
    my $DbUser          = $GetCredentialsResponse->DbUser;
    my $Expiration      = $GetCredentialsResponse->Expiration;
    my $NextRefreshTime = $GetCredentialsResponse->NextRefreshTime;

    # Returns a L<Paws::RedshiftServerless::GetCredentialsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/GetCredentials>

=head1 ATTRIBUTES


=head2 CustomDomainName => Str

The custom domain name associated with the workgroup. The custom domain
name or the workgroup name must be included in the request.



=head2 DbName => Str

The name of the database to get temporary authorization to log on to.

Constraints:

=over

=item *

Must be 1 to 64 alphanumeric characters or hyphens.

=item *

Must contain only uppercase or lowercase letters, numbers, underscore,
plus sign, period (dot), at symbol (@), or hyphen.

=item *

The first character must be a letter.

=item *

Must not contain a colon ( : ) or slash ( / ).

=item *

Cannot be a reserved word. A list of reserved words can be found in
Reserved Words
(https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html) in
the Amazon Redshift Database Developer Guide

=back




=head2 DurationSeconds => Int

The number of seconds until the returned temporary password expires.
The minimum is 900 seconds, and the maximum is 3600 seconds.



=head2 WorkgroupName => Str

The name of the workgroup associated with the database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCredentials in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


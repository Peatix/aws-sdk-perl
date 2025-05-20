
package Paws::SecurityLake::CreateDataLakeOrganizationConfiguration;
  use Moose;
  has AutoEnableNewAccount => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::DataLakeAutoEnableNewAccountConfiguration]', traits => ['NameInRequest'], request_name => 'autoEnableNewAccount');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataLakeOrganizationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/organization/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::CreateDataLakeOrganizationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::CreateDataLakeOrganizationConfiguration - Arguments for method CreateDataLakeOrganizationConfiguration on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataLakeOrganizationConfiguration on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method CreateDataLakeOrganizationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataLakeOrganizationConfiguration.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $CreateDataLakeOrganizationConfigurationResponse =
      $securitylake->CreateDataLakeOrganizationConfiguration(
      AutoEnableNewAccount => [
        {
          Region  => 'MyRegion',
          Sources => [
            {
              SourceName => 'ROUTE53'
              , # values: ROUTE53, VPC_FLOW, SH_FINDINGS, CLOUD_TRAIL_MGMT, LAMBDA_EXECUTION, S3_DATA, EKS_AUDIT, WAF; OPTIONAL
              SourceVersion => 'MyAwsLogSourceVersion',    # OPTIONAL
            },
            ...
          ],    # min: 1

        },
        ...
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/CreateDataLakeOrganizationConfiguration>

=head1 ATTRIBUTES


=head2 AutoEnableNewAccount => ArrayRef[L<Paws::SecurityLake::DataLakeAutoEnableNewAccountConfiguration>]

Enable Security Lake with the specified configuration settings, to
begin collecting security data for new accounts in your organization.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataLakeOrganizationConfiguration in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


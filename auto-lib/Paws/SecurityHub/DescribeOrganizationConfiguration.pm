
package Paws::SecurityHub::DescribeOrganizationConfiguration;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrganizationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::DescribeOrganizationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeOrganizationConfiguration - Arguments for method DescribeOrganizationConfiguration on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrganizationConfiguration on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DescribeOrganizationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrganizationConfiguration.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DescribeOrganizationConfigurationResponse =
      $securityhub->DescribeOrganizationConfiguration();

    # Results:
    my $AutoEnable = $DescribeOrganizationConfigurationResponse->AutoEnable;
    my $AutoEnableStandards =
      $DescribeOrganizationConfigurationResponse->AutoEnableStandards;
    my $MemberAccountLimitReached =
      $DescribeOrganizationConfigurationResponse->MemberAccountLimitReached;
    my $OrganizationConfiguration =
      $DescribeOrganizationConfigurationResponse->OrganizationConfiguration;

# Returns a L<Paws::SecurityHub::DescribeOrganizationConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DescribeOrganizationConfiguration>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrganizationConfiguration in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


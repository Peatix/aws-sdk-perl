
package Paws::WorkMail::DescribeIdentityProviderConfiguration;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIdentityProviderConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DescribeIdentityProviderConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeIdentityProviderConfiguration - Arguments for method DescribeIdentityProviderConfiguration on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIdentityProviderConfiguration on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DescribeIdentityProviderConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIdentityProviderConfiguration.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DescribeIdentityProviderConfigurationResponse =
      $workmail->DescribeIdentityProviderConfiguration(
      OrganizationId => 'MyOrganizationId',

      );

    # Results:
    my $AuthenticationMode =
      $DescribeIdentityProviderConfigurationResponse->AuthenticationMode;
    my $IdentityCenterConfiguration =
      $DescribeIdentityProviderConfigurationResponse
      ->IdentityCenterConfiguration;
    my $PersonalAccessTokenConfiguration =
      $DescribeIdentityProviderConfigurationResponse
      ->PersonalAccessTokenConfiguration;

# Returns a L<Paws::WorkMail::DescribeIdentityProviderConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DescribeIdentityProviderConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

The Organization ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIdentityProviderConfiguration in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


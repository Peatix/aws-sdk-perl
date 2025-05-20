
package Paws::EKS::DescribeAddonConfiguration;
  use Moose;
  has AddonName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'addonName', required => 1);
  has AddonVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'addonVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAddonConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/addons/configuration-schemas');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DescribeAddonConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeAddonConfiguration - Arguments for method DescribeAddonConfiguration on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAddonConfiguration on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method DescribeAddonConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAddonConfiguration.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DescribeAddonConfigurationResponse = $eks->DescribeAddonConfiguration(
      AddonName    => 'MyString',
      AddonVersion => 'MyString',

    );

    # Results:
    my $AddonName    = $DescribeAddonConfigurationResponse->AddonName;
    my $AddonVersion = $DescribeAddonConfigurationResponse->AddonVersion;
    my $ConfigurationSchema =
      $DescribeAddonConfigurationResponse->ConfigurationSchema;
    my $PodIdentityConfiguration =
      $DescribeAddonConfigurationResponse->PodIdentityConfiguration;

    # Returns a L<Paws::EKS::DescribeAddonConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DescribeAddonConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddonName => Str

The name of the add-on. The name must match one of the names returned
by C<DescribeAddonVersions>.



=head2 B<REQUIRED> AddonVersion => Str

The version of the add-on. The version must match one of the versions
returned by C<DescribeAddonVersions>
(https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeAddonVersions.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAddonConfiguration in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


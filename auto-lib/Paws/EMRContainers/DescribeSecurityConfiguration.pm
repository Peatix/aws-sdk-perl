
package Paws::EMRContainers::DescribeSecurityConfiguration;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'securityConfigurationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/securityconfigurations/{securityConfigurationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::DescribeSecurityConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DescribeSecurityConfiguration - Arguments for method DescribeSecurityConfiguration on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSecurityConfiguration on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method DescribeSecurityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSecurityConfiguration.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $DescribeSecurityConfigurationResponse =
      $emr -containers->DescribeSecurityConfiguration(
      Id => 'MyResourceIdString',

      );

    # Results:
    my $SecurityConfiguration =
      $DescribeSecurityConfigurationResponse->SecurityConfiguration;

# Returns a L<Paws::EMRContainers::DescribeSecurityConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/DescribeSecurityConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the security configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSecurityConfiguration in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


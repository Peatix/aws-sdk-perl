
package Paws::AppTest::DeleteTestConfiguration;
  use Moose;
  has TestConfigurationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testConfigurationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTestConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testconfigurations/{testConfigurationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::DeleteTestConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::DeleteTestConfiguration - Arguments for method DeleteTestConfiguration on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTestConfiguration on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method DeleteTestConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTestConfiguration.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $DeleteTestConfigurationResponse = $apptest->DeleteTestConfiguration(
      TestConfigurationId => 'MyIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/DeleteTestConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestConfigurationId => Str

The test ID of the test configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTestConfiguration in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


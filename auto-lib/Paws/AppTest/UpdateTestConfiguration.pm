
package Paws::AppTest::UpdateTestConfiguration;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Properties => (is => 'ro', isa => 'Paws::AppTest::Properties', traits => ['NameInRequest'], request_name => 'properties');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::Resource]', traits => ['NameInRequest'], request_name => 'resources');
  has ServiceSettings => (is => 'ro', isa => 'Paws::AppTest::ServiceSettings', traits => ['NameInRequest'], request_name => 'serviceSettings');
  has TestConfigurationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testConfigurationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTestConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testconfigurations/{testConfigurationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::UpdateTestConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::UpdateTestConfiguration - Arguments for method UpdateTestConfiguration on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTestConfiguration on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method UpdateTestConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTestConfiguration.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $UpdateTestConfigurationResponse = $apptest->UpdateTestConfiguration(
      TestConfigurationId => 'MyIdentifier',
      Description         => 'MyResourceDescription',          # OPTIONAL
      Properties          => { 'MyString' => 'MyString', },    # OPTIONAL
      Resources           => [
        {
          Name => 'MyResourceName',
          Type => {
            CloudFormation => {
              TemplateLocation => 'MyS3Uri',                       # max: 1024
              Parameters       => { 'MyString' => 'MyString', },
            },    # OPTIONAL
            M2ManagedApplication => {
              ApplicationId          => 'MyVariable',
              Runtime                => 'MicroFocus',    # values: MicroFocus
              ListenerPort           => 'MyVariable',
              VpcEndpointServiceName => 'MyVariable',
            },    # OPTIONAL
            M2NonManagedApplication => {
              ListenerPort           => 'MyVariable',
              Runtime                => 'BluAge',       # values: BluAge
              VpcEndpointServiceName => 'MyVariable',
              WebAppName             => 'MyVariable',
            },    # OPTIONAL
          },

        },
        ...
      ],    # OPTIONAL
      ServiceSettings => { KmsKeyId => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $TestConfigurationId =
      $UpdateTestConfigurationResponse->TestConfigurationId;
    my $TestConfigurationVersion =
      $UpdateTestConfigurationResponse->TestConfigurationVersion;

    # Returns a L<Paws::AppTest::UpdateTestConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/UpdateTestConfiguration>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the test configuration.



=head2 Properties => L<Paws::AppTest::Properties>

The properties of the test configuration.



=head2 Resources => ArrayRef[L<Paws::AppTest::Resource>]

The resources of the test configuration.



=head2 ServiceSettings => L<Paws::AppTest::ServiceSettings>

The service settings of the test configuration.



=head2 B<REQUIRED> TestConfigurationId => Str

The test configuration ID of the test configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTestConfiguration in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


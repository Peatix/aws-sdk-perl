
package Paws::AppTest::CreateTestConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Properties => (is => 'ro', isa => 'Paws::AppTest::Properties', traits => ['NameInRequest'], request_name => 'properties');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::AppTest::Resource]', traits => ['NameInRequest'], request_name => 'resources', required => 1);
  has ServiceSettings => (is => 'ro', isa => 'Paws::AppTest::ServiceSettings', traits => ['NameInRequest'], request_name => 'serviceSettings');
  has Tags => (is => 'ro', isa => 'Paws::AppTest::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTestConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testconfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::CreateTestConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::CreateTestConfiguration - Arguments for method CreateTestConfiguration on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTestConfiguration on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method CreateTestConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTestConfiguration.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $CreateTestConfigurationResponse = $apptest->CreateTestConfiguration(
      Name      => 'MyResourceName',
      Resources => [
        {
          Name => 'MyResourceName',
          Type => {
            CloudFormation => {
              TemplateLocation => 'MyS3Uri',                        # max: 1024
              Parameters       => { 'MyString' => 'MyString', },    # OPTIONAL
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
      ],
      ClientToken     => 'MyIdempotencyTokenString',       # OPTIONAL
      Description     => 'MyResourceDescription',          # OPTIONAL
      Properties      => { 'MyString' => 'MyString', },    # OPTIONAL
      ServiceSettings => { KmsKeyId   => 'MyString', },    # OPTIONAL
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $TestConfigurationId =
      $CreateTestConfigurationResponse->TestConfigurationId;
    my $TestConfigurationVersion =
      $CreateTestConfigurationResponse->TestConfigurationVersion;

    # Returns a L<Paws::AppTest::CreateTestConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/CreateTestConfiguration>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token of the test configuration.



=head2 Description => Str

The description of the test configuration.



=head2 B<REQUIRED> Name => Str

The name of the test configuration.



=head2 Properties => L<Paws::AppTest::Properties>

The properties of the test configuration.



=head2 B<REQUIRED> Resources => ArrayRef[L<Paws::AppTest::Resource>]

The defined resources of the test configuration.



=head2 ServiceSettings => L<Paws::AppTest::ServiceSettings>

The service settings of the test configuration.



=head2 Tags => L<Paws::AppTest::TagMap>

The tags of the test configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTestConfiguration in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


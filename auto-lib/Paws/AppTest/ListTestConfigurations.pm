
package Paws::AppTest::ListTestConfigurations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TestConfigurationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'testConfigurationIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTestConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testconfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::ListTestConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::ListTestConfigurations - Arguments for method ListTestConfigurations on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTestConfigurations on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method ListTestConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTestConfigurations.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $ListTestConfigurationsResponse = $apptest->ListTestConfigurations(
      MaxResults           => 1,                          # OPTIONAL
      NextToken            => 'MyNextToken',              # OPTIONAL
      TestConfigurationIds => [ 'MyIdentifier', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTestConfigurationsResponse->NextToken;
    my $TestConfigurations =
      $ListTestConfigurationsResponse->TestConfigurations;

    # Returns a L<Paws::AppTest::ListTestConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/ListTestConfigurations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum results of the test configuration.



=head2 NextToken => Str

The next token for the test configurations.



=head2 TestConfigurationIds => ArrayRef[Str|Undef]

The configuration IDs of the test configurations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTestConfigurations in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::AppTest::DeleteTestSuite;
  use Moose;
  has TestSuiteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testSuiteId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTestSuite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testsuites/{testSuiteId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppTest::DeleteTestSuiteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppTest::DeleteTestSuite - Arguments for method DeleteTestSuite on L<Paws::AppTest>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTestSuite on the
L<AWS Mainframe Modernization Application Testing|Paws::AppTest> service. Use the attributes of this class
as arguments to method DeleteTestSuite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTestSuite.

=head1 SYNOPSIS

    my $apptest = Paws->service('AppTest');
    my $DeleteTestSuiteResponse = $apptest->DeleteTestSuite(
      TestSuiteId => 'MyIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apptest/DeleteTestSuite>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TestSuiteId => Str

The test ID of the test suite.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTestSuite in L<Paws::AppTest>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Glue::DescribeConnectionType;
  use Moose;
  has ConnectionType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConnectionType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DescribeConnectionTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DescribeConnectionType - Arguments for method DescribeConnectionType on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConnectionType on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DescribeConnectionType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConnectionType.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DescribeConnectionTypeResponse = $glue->DescribeConnectionType(
      ConnectionType => 'MyNameString',

    );

    # Results:
    my $AthenaConnectionProperties =
      $DescribeConnectionTypeResponse->AthenaConnectionProperties;
    my $AuthenticationConfiguration =
      $DescribeConnectionTypeResponse->AuthenticationConfiguration;
    my $Capabilities = $DescribeConnectionTypeResponse->Capabilities;
    my $ComputeEnvironmentConfigurations =
      $DescribeConnectionTypeResponse->ComputeEnvironmentConfigurations;
    my $ConnectionOptions = $DescribeConnectionTypeResponse->ConnectionOptions;
    my $ConnectionProperties =
      $DescribeConnectionTypeResponse->ConnectionProperties;
    my $ConnectionType = $DescribeConnectionTypeResponse->ConnectionType;
    my $Description    = $DescribeConnectionTypeResponse->Description;
    my $PhysicalConnectionRequirements =
      $DescribeConnectionTypeResponse->PhysicalConnectionRequirements;
    my $PythonConnectionProperties =
      $DescribeConnectionTypeResponse->PythonConnectionProperties;
    my $SparkConnectionProperties =
      $DescribeConnectionTypeResponse->SparkConnectionProperties;

    # Returns a L<Paws::Glue::DescribeConnectionTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DescribeConnectionType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionType => Str

The name of the connection type to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConnectionType in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


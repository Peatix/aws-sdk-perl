
package Paws::Config::DescribeConfigurationRecorderStatus;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has ConfigurationRecorderNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServicePrincipal => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationRecorderStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DescribeConfigurationRecorderStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigurationRecorderStatus - Arguments for method DescribeConfigurationRecorderStatus on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfigurationRecorderStatus on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DescribeConfigurationRecorderStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfigurationRecorderStatus.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DescribeConfigurationRecorderStatusResponse =
      $config->DescribeConfigurationRecorderStatus(
      Arn                        => 'MyAmazonResourceName',    # OPTIONAL
      ConfigurationRecorderNames => [
        'MyRecorderName', ...    # min: 1, max: 256
      ],    # OPTIONAL
      ServicePrincipal => 'MyServicePrincipal',    # OPTIONAL
      );

    # Results:
    my $ConfigurationRecordersStatus =
      $DescribeConfigurationRecorderStatusResponse
      ->ConfigurationRecordersStatus;

# Returns a L<Paws::Config::DescribeConfigurationRecorderStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DescribeConfigurationRecorderStatus>

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the configuration recorder that you
want to specify.



=head2 ConfigurationRecorderNames => ArrayRef[Str|Undef]

The name of the configuration recorder. If the name is not specified,
the opertation returns the status for the customer managed
configuration recorder configured for the account, if applicable.

When making a request to this operation, you can only specify one
configuration recorder.



=head2 ServicePrincipal => Str

For service-linked configuration recorders, you can use the service
principal of the linked Amazon Web Services service to specify the
configuration recorder.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfigurationRecorderStatus in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


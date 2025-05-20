
package Paws::KafkaConnect::DescribeCustomPlugin;
  use Moose;
  has CustomPluginArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'customPluginArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCustomPlugin');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/custom-plugins/{customPluginArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KafkaConnect::DescribeCustomPluginResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KafkaConnect::DescribeCustomPlugin - Arguments for method DescribeCustomPlugin on L<Paws::KafkaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCustomPlugin on the
L<Managed Streaming for Kafka Connect|Paws::KafkaConnect> service. Use the attributes of this class
as arguments to method DescribeCustomPlugin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCustomPlugin.

=head1 SYNOPSIS

    my $kafkaconnect = Paws->service('KafkaConnect');
    my $DescribeCustomPluginResponse = $kafkaconnect->DescribeCustomPlugin(
      CustomPluginArn => 'My__string',

    );

    # Results:
    my $CreationTime      = $DescribeCustomPluginResponse->CreationTime;
    my $CustomPluginArn   = $DescribeCustomPluginResponse->CustomPluginArn;
    my $CustomPluginState = $DescribeCustomPluginResponse->CustomPluginState;
    my $Description       = $DescribeCustomPluginResponse->Description;
    my $LatestRevision    = $DescribeCustomPluginResponse->LatestRevision;
    my $Name              = $DescribeCustomPluginResponse->Name;
    my $StateDescription  = $DescribeCustomPluginResponse->StateDescription;

    # Returns a L<Paws::KafkaConnect::DescribeCustomPluginResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafkaconnect/DescribeCustomPlugin>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomPluginArn => Str

Returns information about a custom plugin.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCustomPlugin in L<Paws::KafkaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


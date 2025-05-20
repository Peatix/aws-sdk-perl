
package Paws::CloudWatchLogs::DescribeConfigurationTemplates;
  use Moose;
  has DeliveryDestinationTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'deliveryDestinationTypes' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logTypes' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceTypes' );
  has Service => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'service' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationTemplates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeConfigurationTemplatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeConfigurationTemplates - Arguments for method DescribeConfigurationTemplates on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfigurationTemplates on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DescribeConfigurationTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfigurationTemplates.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DescribeConfigurationTemplatesResponse =
      $logs->DescribeConfigurationTemplates(
      DeliveryDestinationTypes => [
        'S3', ...    # values: S3, CWL, FH
      ],    # OPTIONAL
      Limit    => 1,    # OPTIONAL
      LogTypes => [
        'MyLogType', ...    # min: 1, max: 255
      ],    # OPTIONAL
      NextToken     => 'MyNextToken',    # OPTIONAL
      ResourceTypes => [
        'MyResourceType', ...            # min: 1, max: 255
      ],    # OPTIONAL
      Service => 'MyService',    # OPTIONAL
      );

    # Results:
    my $ConfigurationTemplates =
      $DescribeConfigurationTemplatesResponse->ConfigurationTemplates;
    my $NextToken = $DescribeConfigurationTemplatesResponse->NextToken;

# Returns a L<Paws::CloudWatchLogs::DescribeConfigurationTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DescribeConfigurationTemplates>

=head1 ATTRIBUTES


=head2 DeliveryDestinationTypes => ArrayRef[Str|Undef]

Use this parameter to filter the response to include only the
configuration templates that apply to the delivery destination types
that you specify here.



=head2 Limit => Int

Use this parameter to limit the number of configuration templates that
are returned in the response.



=head2 LogTypes => ArrayRef[Str|Undef]

Use this parameter to filter the response to include only the
configuration templates that apply to the log types that you specify
here.



=head2 NextToken => Str





=head2 ResourceTypes => ArrayRef[Str|Undef]

Use this parameter to filter the response to include only the
configuration templates that apply to the resource types that you
specify here.



=head2 Service => Str

Use this parameter to filter the response to include only the
configuration templates that apply to the Amazon Web Services service
that you specify here.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfigurationTemplates in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


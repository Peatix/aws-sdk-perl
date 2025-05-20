
package Paws::Evidently::UpdateProjectDataDelivery;
  use Moose;
  has CloudWatchLogs => (is => 'ro', isa => 'Paws::Evidently::CloudWatchLogsDestinationConfig', traits => ['NameInRequest'], request_name => 'cloudWatchLogs');
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);
  has S3Destination => (is => 'ro', isa => 'Paws::Evidently::S3DestinationConfig', traits => ['NameInRequest'], request_name => 's3Destination');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProjectDataDelivery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/data-delivery');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::UpdateProjectDataDeliveryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::UpdateProjectDataDelivery - Arguments for method UpdateProjectDataDelivery on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProjectDataDelivery on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method UpdateProjectDataDelivery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProjectDataDelivery.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $UpdateProjectDataDeliveryResponse =
      $evidently->UpdateProjectDataDelivery(
      Project        => 'MyProjectRef',
      CloudWatchLogs => {
        LogGroup => 'MyCwLogGroupSafeName',    # min: 1, max: 512; OPTIONAL
      },    # OPTIONAL
      S3Destination => {
        Bucket => 'MyS3BucketSafeName',    # min: 3, max: 63; OPTIONAL
        Prefix => 'MyS3PrefixSafeName',    # min: 1, max: 1024; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $Project = $UpdateProjectDataDeliveryResponse->Project;

    # Returns a L<Paws::Evidently::UpdateProjectDataDeliveryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/UpdateProjectDataDelivery>

=head1 ATTRIBUTES


=head2 CloudWatchLogs => L<Paws::Evidently::CloudWatchLogsDestinationConfig>

A structure containing the CloudWatch Logs log group where you want to
store evaluation events.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that you want to modify the data storage
options for.



=head2 S3Destination => L<Paws::Evidently::S3DestinationConfig>

A structure containing the S3 bucket name and bucket prefix where you
want to store evaluation events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProjectDataDelivery in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


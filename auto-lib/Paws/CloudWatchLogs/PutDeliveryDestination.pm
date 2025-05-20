
package Paws::CloudWatchLogs::PutDeliveryDestination;
  use Moose;
  has DeliveryDestinationConfiguration => (is => 'ro', isa => 'Paws::CloudWatchLogs::DeliveryDestinationConfiguration', traits => ['NameInRequest'], request_name => 'deliveryDestinationConfiguration' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has OutputFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputFormat' );
  has Tags => (is => 'ro', isa => 'Paws::CloudWatchLogs::Tags', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDeliveryDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::PutDeliveryDestinationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDeliveryDestination - Arguments for method PutDeliveryDestination on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDeliveryDestination on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutDeliveryDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDeliveryDestination.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $PutDeliveryDestinationResponse = $logs->PutDeliveryDestination(
      DeliveryDestinationConfiguration => {
        DestinationResourceArn => 'MyArn',

      },
      Name         => 'MyDeliveryDestinationName',
      OutputFormat => 'json',                        # OPTIONAL
      Tags         => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $DeliveryDestination =
      $PutDeliveryDestinationResponse->DeliveryDestination;

    # Returns a L<Paws::CloudWatchLogs::PutDeliveryDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutDeliveryDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryDestinationConfiguration => L<Paws::CloudWatchLogs::DeliveryDestinationConfiguration>

A structure that contains the ARN of the Amazon Web Services resource
that will receive the logs.



=head2 B<REQUIRED> Name => Str

A name for this delivery destination. This name must be unique for all
delivery destinations in your account.



=head2 OutputFormat => Str

The format for the logs that this delivery destination will receive.

Valid values are: C<"json">, C<"plain">, C<"w3c">, C<"raw">, C<"parquet">

=head2 Tags => L<Paws::CloudWatchLogs::Tags>

An optional list of key-value pairs to associate with the resource.

For more information about tagging, see Tagging Amazon Web Services
resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDeliveryDestination in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


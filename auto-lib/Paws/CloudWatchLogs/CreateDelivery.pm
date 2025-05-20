
package Paws::CloudWatchLogs::CreateDelivery;
  use Moose;
  has DeliveryDestinationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deliveryDestinationArn' , required => 1);
  has DeliverySourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deliverySourceName' , required => 1);
  has FieldDelimiter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fieldDelimiter' );
  has RecordFields => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'recordFields' );
  has S3DeliveryConfiguration => (is => 'ro', isa => 'Paws::CloudWatchLogs::S3DeliveryConfiguration', traits => ['NameInRequest'], request_name => 's3DeliveryConfiguration' );
  has Tags => (is => 'ro', isa => 'Paws::CloudWatchLogs::Tags', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDelivery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::CreateDeliveryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CreateDelivery - Arguments for method CreateDelivery on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDelivery on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method CreateDelivery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDelivery.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $CreateDeliveryResponse = $logs->CreateDelivery(
      DeliveryDestinationArn => 'MyArn',
      DeliverySourceName     => 'MyDeliverySourceName',
      FieldDelimiter         => 'MyFieldDelimiter',       # OPTIONAL
      RecordFields           => [
        'MyFieldHeader', ...                              # min: 1, max: 64
      ],    # OPTIONAL
      S3DeliveryConfiguration => {
        EnableHiveCompatiblePath => 1,           # OPTIONAL
        SuffixPath => 'MyDeliverySuffixPath',    # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Delivery = $CreateDeliveryResponse->Delivery;

    # Returns a L<Paws::CloudWatchLogs::CreateDeliveryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/CreateDelivery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryDestinationArn => Str

The ARN of the delivery destination to use for this delivery.



=head2 B<REQUIRED> DeliverySourceName => Str

The name of the delivery source to use for this delivery.



=head2 FieldDelimiter => Str

The field delimiter to use between record fields when the final output
format of a delivery is in C<Plain>, C<W3C>, or C<Raw> format.



=head2 RecordFields => ArrayRef[Str|Undef]

The list of record fields to be delivered to the destination, in order.
If the delivery's log source has mandatory fields, they must be
included in this list.



=head2 S3DeliveryConfiguration => L<Paws::CloudWatchLogs::S3DeliveryConfiguration>

This structure contains parameters that are valid only when the
delivery's delivery destination is an S3 bucket.



=head2 Tags => L<Paws::CloudWatchLogs::Tags>

An optional list of key-value pairs to associate with the resource.

For more information about tagging, see Tagging Amazon Web Services
resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDelivery in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


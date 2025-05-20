
package Paws::CloudWatchLogs::UpdateDeliveryConfiguration;
  use Moose;
  has FieldDelimiter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fieldDelimiter' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has RecordFields => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'recordFields' );
  has S3DeliveryConfiguration => (is => 'ro', isa => 'Paws::CloudWatchLogs::S3DeliveryConfiguration', traits => ['NameInRequest'], request_name => 's3DeliveryConfiguration' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDeliveryConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::UpdateDeliveryConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::UpdateDeliveryConfiguration - Arguments for method UpdateDeliveryConfiguration on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeliveryConfiguration on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method UpdateDeliveryConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeliveryConfiguration.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $UpdateDeliveryConfigurationResponse =
      $logs->UpdateDeliveryConfiguration(
      Id             => 'MyDeliveryId',
      FieldDelimiter => 'MyFieldDelimiter',    # OPTIONAL
      RecordFields   => [
        'MyFieldHeader', ...                   # min: 1, max: 64
      ],    # OPTIONAL
      S3DeliveryConfiguration => {
        EnableHiveCompatiblePath => 1,           # OPTIONAL
        SuffixPath => 'MyDeliverySuffixPath',    # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/UpdateDeliveryConfiguration>

=head1 ATTRIBUTES


=head2 FieldDelimiter => Str

The field delimiter to use between record fields when the final output
format of a delivery is in C<Plain>, C<W3C>, or C<Raw> format.



=head2 B<REQUIRED> Id => Str

The ID of the delivery to be updated by this request.



=head2 RecordFields => ArrayRef[Str|Undef]

The list of record fields to be delivered to the destination, in order.
If the delivery's log source has mandatory fields, they must be
included in this list.



=head2 S3DeliveryConfiguration => L<Paws::CloudWatchLogs::S3DeliveryConfiguration>

This structure contains parameters that are valid only when the
delivery's delivery destination is an S3 bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeliveryConfiguration in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


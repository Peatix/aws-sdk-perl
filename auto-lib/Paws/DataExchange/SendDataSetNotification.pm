
package Paws::DataExchange::SendDataSetNotification;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Comment => (is => 'ro', isa => 'Str');
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSetId', required => 1);
  has Details => (is => 'ro', isa => 'Paws::DataExchange::NotificationDetails');
  has Scope => (is => 'ro', isa => 'Paws::DataExchange::ScopeDetails');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendDataSetNotification');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/data-sets/{DataSetId}/notification');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::SendDataSetNotificationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::SendDataSetNotification - Arguments for method SendDataSetNotification on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendDataSetNotification on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method SendDataSetNotification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendDataSetNotification.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $SendDataSetNotificationResponse =
      $dataexchange->SendDataSetNotification(
      DataSetId   => 'My__string',
      Type        => 'DATA_DELAY',
      ClientToken => 'MyClientToken',            # OPTIONAL
      Comment     => 'My__stringMin0Max4096',    # OPTIONAL
      Details     => {
        DataUpdate => {
          DataUpdatedAt => '1970-01-01T01:00:00',    # OPTIONAL
        },    # OPTIONAL
        Deprecation => {
          DeprecationAt => '1970-01-01T01:00:00',    # OPTIONAL

        },    # OPTIONAL
        SchemaChange => {
          SchemaChangeAt => '1970-01-01T01:00:00',    # OPTIONAL
          Changes        => [
            {
              Name        => 'My__string',
              Type        => 'ADD',          # values: ADD, REMOVE, MODIFY
              Description => 'My__string',
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Scope => {
        LakeFormationTagPolicies => [
          {
            Database => 'My__string',
            Table    => 'My__string',
          },
          ...
        ],    # OPTIONAL
        RedshiftDataShares => [
          {
            Arn      => 'My__string',
            Database => 'My__string',
            Function => 'My__string',
            Schema   => 'My__string',
            Table    => 'My__string',
            View     => 'My__string',
          },
          ...
        ],    # OPTIONAL
        S3DataAccesses => [
          {
            KeyPrefixes => [ 'My__string', ... ],    # OPTIONAL
            Keys        => [ 'My__string', ... ],    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/SendDataSetNotification>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Idempotency key for the notification, this key allows us to deduplicate
notifications that are sent in quick succession erroneously.



=head2 Comment => Str

Free-form text field for providers to add information about their
notifications.



=head2 B<REQUIRED> DataSetId => Str

Affected data set of the notification.



=head2 Details => L<Paws::DataExchange::NotificationDetails>

Extra details specific to this notification type.



=head2 Scope => L<Paws::DataExchange::ScopeDetails>

Affected scope of this notification such as the underlying resources
affected by the notification event.



=head2 B<REQUIRED> Type => Str

The type of the notification. Describing the kind of event the
notification is alerting you to.

Valid values are: C<"DATA_DELAY">, C<"DATA_UPDATE">, C<"DEPRECATION">, C<"SCHEMA_CHANGE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendDataSetNotification in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


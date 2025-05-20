
package Paws::RedShift::DataShare;
  use Moose;
  has AllowPubliclyAccessibleConsumers => (is => 'ro', isa => 'Bool');
  has DataShareArn => (is => 'ro', isa => 'Str');
  has DataShareAssociations => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::DataShareAssociation]');
  has DataShareType => (is => 'ro', isa => 'Str');
  has ManagedBy => (is => 'ro', isa => 'Str');
  has ProducerArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DataShare

=head1 ATTRIBUTES


=head2 AllowPubliclyAccessibleConsumers => Bool

A value that specifies whether the datashare can be shared to a
publicly accessible cluster.


=head2 DataShareArn => Str

The Amazon Resource Name (ARN) of the datashare that the consumer is to
use.


=head2 DataShareAssociations => ArrayRef[L<Paws::RedShift::DataShareAssociation>]

A value that specifies when the datashare has an association between
producer and data consumers.


=head2 DataShareType => Str

The type of the datashare created by RegisterNamespace.

Valid values are: C<"INTERNAL">
=head2 ManagedBy => Str

The identifier of a datashare to show its managing entity.


=head2 ProducerArn => Str

The Amazon Resource Name (ARN) of the producer namespace.


=head2 _request_id => Str


=cut


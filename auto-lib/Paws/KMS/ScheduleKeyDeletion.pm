
package Paws::KMS::ScheduleKeyDeletion;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has PendingWindowInDays => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ScheduleKeyDeletion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ScheduleKeyDeletionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ScheduleKeyDeletion - Arguments for method ScheduleKeyDeletion on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ScheduleKeyDeletion on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method ScheduleKeyDeletion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ScheduleKeyDeletion.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To schedule a KMS key for deletion
    # The following example schedules the specified KMS key for deletion.
    my $ScheduleKeyDeletionResponse = $kms->ScheduleKeyDeletion(
      'KeyId'               => '1234abcd-12ab-34cd-56ef-1234567890ab',
      'PendingWindowInDays' => 7
    );

    # Results:
    my $DeletionDate = $ScheduleKeyDeletionResponse->DeletionDate;
    my $KeyId        = $ScheduleKeyDeletionResponse->KeyId;

    # Returns a L<Paws::KMS::ScheduleKeyDeletionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/ScheduleKeyDeletion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

The unique identifier of the KMS key to delete.

Specify the key ID or key ARN of the KMS key.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a KMS key, use ListKeys or
DescribeKey.



=head2 PendingWindowInDays => Int

The waiting period, specified in number of days. After the waiting
period ends, KMS deletes the KMS key.

If the KMS key is a multi-Region primary key with replica keys, the
waiting period begins when the last of its replica keys is deleted.
Otherwise, the waiting period begins immediately.

This value is optional. If you include a value, it must be between 7
and 30, inclusive. If you do not include a value, it defaults to 30.
You can use the C<kms:ScheduleKeyDeletionPendingWindowInDays>
(https://docs.aws.amazon.com/kms/latest/developerguide/conditions-kms.html#conditions-kms-schedule-key-deletion-pending-window-in-days)
condition key to further constrain the values that principals can
specify in the C<PendingWindowInDays> parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ScheduleKeyDeletion in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


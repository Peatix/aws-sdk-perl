
package Paws::DMS::StartReplication;
  use Moose;
  has CdcStartPosition => (is => 'ro', isa => 'Str');
  has CdcStartTime => (is => 'ro', isa => 'Str');
  has CdcStopPosition => (is => 'ro', isa => 'Str');
  has PremigrationAssessmentSettings => (is => 'ro', isa => 'Str');
  has ReplicationConfigArn => (is => 'ro', isa => 'Str', required => 1);
  has StartReplicationType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartReplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::StartReplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartReplication - Arguments for method StartReplication on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartReplication on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method StartReplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartReplication.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $StartReplicationResponse = $dms->StartReplication(
      ReplicationConfigArn           => 'MyString',
      StartReplicationType           => 'MyString',
      CdcStartPosition               => 'MyString',               # OPTIONAL
      CdcStartTime                   => '1970-01-01T01:00:00',    # OPTIONAL
      CdcStopPosition                => 'MyString',               # OPTIONAL
      PremigrationAssessmentSettings => 'MyString',               # OPTIONAL
    );

    # Results:
    my $Replication = $StartReplicationResponse->Replication;

    # Returns a L<Paws::DMS::StartReplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/StartReplication>

=head1 ATTRIBUTES


=head2 CdcStartPosition => Str

Indicates when you want a change data capture (CDC) operation to start.
Use either C<CdcStartPosition> or C<CdcStartTime> to specify when you
want a CDC operation to start. Specifying both values results in an
error.

The value can be in date, checkpoint, or LSN/SCN format.



=head2 CdcStartTime => Str

Indicates the start time for a change data capture (CDC) operation. Use
either C<CdcStartTime> or C<CdcStartPosition> to specify when you want
a CDC operation to start. Specifying both values results in an error.



=head2 CdcStopPosition => Str

Indicates when you want a change data capture (CDC) operation to stop.
The value can be either server time or commit time.



=head2 PremigrationAssessmentSettings => Str

User-defined settings for the premigration assessment. The possible
values are:

=over

=item *

C<ResultLocationFolder>: The folder within an Amazon S3 bucket where
you want DMS to store the results of this assessment run.

=item *

C<ResultEncryptionMode>: The supported values are C<SSE_KMS> and
C<SSE_S3>. If these values are not provided, then the files are not
encrypted at rest. For more information, see Creating Amazon Web
Services KMS keys to encrypt Amazon S3 target objects
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.KMSKeys).

=item *

C<ResultKmsKeyArn>: The ARN of a customer KMS encryption key that you
specify when you set C<ResultEncryptionMode> to C<SSE_KMS>.

=item *

C<IncludeOnly>: A space-separated list of names for specific individual
assessments that you want to include. These names come from the default
list of individual assessments that Database Migration Service supports
for the associated migration.

=item *

C<Exclude>: A space-separated list of names for specific individual
assessments that you want to exclude. These names come from the default
list of individual assessments that Database Migration Service supports
for the associated migration.

=item *

C<FailOnAssessmentFailure>: A configurable setting you can set to
C<true> (the default setting) or C<false>. Use this setting to to stop
the replication from starting automatically if the assessment fails.
This can help you evaluate the issue that is preventing the replication
from running successfully.

=back




=head2 B<REQUIRED> ReplicationConfigArn => Str

The Amazon Resource Name of the replication for which to start
replication.



=head2 B<REQUIRED> StartReplicationType => Str

The replication type.

When the replication type is C<full-load> or C<full-load-and-cdc>, the
only valid value for the first run of the replication is
C<start-replication>. This option will start the replication.

You can also use ReloadTables to reload specific tables that failed
during replication instead of restarting the replication.

The C<resume-processing> option isn't applicable for a full-load
replication, because you can't resume partially loaded tables during
the full load phase.

For a C<full-load-and-cdc> replication, DMS migrates table data, and
then applies data changes that occur on the source. To load all the
tables again, and start capturing source changes, use C<reload-target>.
Otherwise use C<resume-processing>, to replicate the changes from the
last stop position.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartReplication in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


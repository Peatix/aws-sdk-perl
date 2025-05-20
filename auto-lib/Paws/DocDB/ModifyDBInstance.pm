
package Paws::DocDB::ModifyDBInstance;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CertificateRotationRestart => (is => 'ro', isa => 'Bool');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has NewDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PromotionTier => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::ModifyDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::ModifyDBInstance - Arguments for method ModifyDBInstance on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBInstance on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method ModifyDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $ModifyDBInstanceResult = $rds->ModifyDBInstance(
      DBInstanceIdentifier        => 'MyString',
      ApplyImmediately            => 1,             # OPTIONAL
      AutoMinorVersionUpgrade     => 1,             # OPTIONAL
      CACertificateIdentifier     => 'MyString',    # OPTIONAL
      CertificateRotationRestart  => 1,             # OPTIONAL
      CopyTagsToSnapshot          => 1,             # OPTIONAL
      DBInstanceClass             => 'MyString',    # OPTIONAL
      EnablePerformanceInsights   => 1,             # OPTIONAL
      NewDBInstanceIdentifier     => 'MyString',    # OPTIONAL
      PerformanceInsightsKMSKeyId => 'MyString',    # OPTIONAL
      PreferredMaintenanceWindow  => 'MyString',    # OPTIONAL
      PromotionTier               => 1,             # OPTIONAL
    );

    # Results:
    my $DBInstance = $ModifyDBInstanceResult->DBInstance;

    # Returns a L<Paws::DocDB::ModifyDBInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyDBInstance>

=head1 ATTRIBUTES


=head2 ApplyImmediately => Bool

Specifies whether the modifications in this request and any pending
modifications are asynchronously applied as soon as possible,
regardless of the C<PreferredMaintenanceWindow> setting for the
instance.

If this parameter is set to C<false>, changes to the instance are
applied during the next maintenance window. Some parameter changes can
cause an outage and are applied on the next reboot.

Default: C<false>



=head2 AutoMinorVersionUpgrade => Bool

This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB
does not perform minor version upgrades regardless of the value set.



=head2 CACertificateIdentifier => Str

Indicates the certificate that needs to be associated with the
instance.



=head2 CertificateRotationRestart => Bool

Specifies whether the DB instance is restarted when you rotate your
SSL/TLS certificate.

By default, the DB instance is restarted when you rotate your SSL/TLS
certificate. The certificate is not updated until the DB instance is
restarted.

Set this parameter only if you are I<not> using SSL/TLS to connect to
the DB instance.

If you are using SSL/TLS to connect to the DB instance, see Updating
Your Amazon DocumentDB TLS Certificates
(https://docs.aws.amazon.com/documentdb/latest/developerguide/ca_cert_rotation.html)
and Encrypting Data in Transit
(https://docs.aws.amazon.com/documentdb/latest/developerguide/security.encryption.ssl.html)
in the I<Amazon DocumentDB Developer Guide>.



=head2 CopyTagsToSnapshot => Bool

A value that indicates whether to copy all tags from the DB instance to
snapshots of the DB instance. By default, tags are not copied.



=head2 DBInstanceClass => Str

The new compute and memory capacity of the instance; for example,
C<db.r5.large>. Not all instance classes are available in all Amazon
Web Services Regions.

If you modify the instance class, an outage occurs during the change.
The change is applied during the next maintenance window, unless
C<ApplyImmediately> is specified as C<true> for this request.

Default: Uses existing setting.



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The instance identifier. This value is stored as a lowercase string.

Constraints:

=over

=item *

Must match the identifier of an existing C<DBInstance>.

=back




=head2 EnablePerformanceInsights => Bool

A value that indicates whether to enable Performance Insights for the
DB Instance. For more information, see Using Amazon Performance
Insights
(https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html).



=head2 NewDBInstanceIdentifier => Str

The new instance identifier for the instance when renaming an instance.
When you change the instance identifier, an instance reboot occurs
immediately if you set C<Apply Immediately> to C<true>. It occurs
during the next maintenance window if you set C<Apply Immediately> to
C<false>. This value is stored as a lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<mydbinstance>



=head2 PerformanceInsightsKMSKeyId => Str

The KMS key identifier for encryption of Performance Insights data.

The KMS key identifier is the key ARN, key ID, alias ARN, or alias name
for the KMS key.

If you do not specify a value for PerformanceInsightsKMSKeyId, then
Amazon DocumentDB uses your default KMS key. There is a default KMS key
for your Amazon Web Services account. Your Amazon Web Services account
has a different default KMS key for each Amazon Web Services region.



=head2 PreferredMaintenanceWindow => Str

The weekly time range (in UTC) during which system maintenance can
occur, which might result in an outage. Changing this parameter doesn't
result in an outage except in the following situation, and the change
is asynchronously applied as soon as possible. If there are pending
actions that cause a reboot, and the maintenance window is changed to
include the current time, changing this parameter causes a reboot of
the instance. If you are moving this window to the current time, there
must be at least 30 minutes between the current time and end of the
window to ensure that pending changes are applied.

Default: Uses existing setting.

Format: C<ddd:hh24:mi-ddd:hh24:mi>

Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Must be at least 30 minutes.



=head2 PromotionTier => Int

A value that specifies the order in which an Amazon DocumentDB replica
is promoted to the primary instance after a failure of the existing
primary instance.

Default: 1

Valid values: 0-15




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBInstance in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::DocDB::CreateDBInstance;
  use Moose;
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBInstanceClass => (is => 'ro', isa => 'Str', required => 1);
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has EnablePerformanceInsights => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has PerformanceInsightsKMSKeyId => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PromotionTier => (is => 'ro', isa => 'Int');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::CreateDBInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBInstanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CreateDBInstance - Arguments for method CreateDBInstance on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBInstance on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method CreateDBInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBInstance.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $CreateDBInstanceResult = $rds->CreateDBInstance(
      DBClusterIdentifier         => 'MyString',
      DBInstanceClass             => 'MyString',
      DBInstanceIdentifier        => 'MyString',
      Engine                      => 'MyString',
      AutoMinorVersionUpgrade     => 1,             # OPTIONAL
      AvailabilityZone            => 'MyString',    # OPTIONAL
      CACertificateIdentifier     => 'MyString',    # OPTIONAL
      CopyTagsToSnapshot          => 1,             # OPTIONAL
      EnablePerformanceInsights   => 1,             # OPTIONAL
      PerformanceInsightsKMSKeyId => 'MyString',    # OPTIONAL
      PreferredMaintenanceWindow  => 'MyString',    # OPTIONAL
      PromotionTier               => 1,             # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                            # OPTIONAL
    );

    # Results:
    my $DBInstance = $CreateDBInstanceResult->DBInstance;

    # Returns a L<Paws::DocDB::CreateDBInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBInstance>

=head1 ATTRIBUTES


=head2 AutoMinorVersionUpgrade => Bool

This parameter does not apply to Amazon DocumentDB. Amazon DocumentDB
does not perform minor version upgrades regardless of the value set.

Default: C<false>



=head2 AvailabilityZone => Str

The Amazon EC2 Availability Zone that the instance is created in.

Default: A random, system-chosen Availability Zone in the endpoint's
Amazon Web Services Region.

Example: C<us-east-1d>



=head2 CACertificateIdentifier => Str

The CA certificate identifier to use for the DB instance's server
certificate.

For more information, see Updating Your Amazon DocumentDB TLS
Certificates
(https://docs.aws.amazon.com/documentdb/latest/developerguide/ca_cert_rotation.html)
and Encrypting Data in Transit
(https://docs.aws.amazon.com/documentdb/latest/developerguide/security.encryption.ssl.html)
in the I<Amazon DocumentDB Developer Guide>.



=head2 CopyTagsToSnapshot => Bool

A value that indicates whether to copy tags from the DB instance to
snapshots of the DB instance. By default, tags are not copied.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The identifier of the cluster that the instance will belong to.



=head2 B<REQUIRED> DBInstanceClass => Str

The compute and memory capacity of the instance; for example,
C<db.r5.large>.



=head2 B<REQUIRED> DBInstanceIdentifier => Str

The instance identifier. This parameter is stored as a lowercase
string.

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



=head2 EnablePerformanceInsights => Bool

A value that indicates whether to enable Performance Insights for the
DB Instance. For more information, see Using Amazon Performance
Insights
(https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html).



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this instance.

Valid value: C<docdb>



=head2 PerformanceInsightsKMSKeyId => Str

The KMS key identifier for encryption of Performance Insights data.

The KMS key identifier is the key ARN, key ID, alias ARN, or alias name
for the KMS key.

If you do not specify a value for PerformanceInsightsKMSKeyId, then
Amazon DocumentDB uses your default KMS key. There is a default KMS key
for your Amazon Web Services account. Your Amazon Web Services account
has a different default KMS key for each Amazon Web Services region.



=head2 PreferredMaintenanceWindow => Str

The time range each week during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a
random day of the week.

Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Minimum 30-minute window.



=head2 PromotionTier => Int

A value that specifies the order in which an Amazon DocumentDB replica
is promoted to the primary instance after a failure of the existing
primary instance.

Default: 1

Valid values: 0-15



=head2 Tags => ArrayRef[L<Paws::DocDB::Tag>]

The tags to be assigned to the instance. You can assign up to 10 tags
to an instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBInstance in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::PerformanceInsights::GetDimensionKeyDetails;
  use Moose;
  has Group => (is => 'ro', isa => 'Str', required => 1);
  has GroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has RequestedDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDimensionKeyDetails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PerformanceInsights::GetDimensionKeyDetailsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::GetDimensionKeyDetails - Arguments for method GetDimensionKeyDetails on L<Paws::PerformanceInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDimensionKeyDetails on the
L<AWS Performance Insights|Paws::PerformanceInsights> service. Use the attributes of this class
as arguments to method GetDimensionKeyDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDimensionKeyDetails.

=head1 SYNOPSIS

    my $pi = Paws->service('PerformanceInsights');
    my $GetDimensionKeyDetailsResponse = $pi->GetDimensionKeyDetails(
      Group               => 'MyRequestString',
      GroupIdentifier     => 'MyRequestString',
      Identifier          => 'MyIdentifierString',
      ServiceType         => 'RDS',
      RequestedDimensions => [
        'MySanitizedString', ...    # max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $Dimensions = $GetDimensionKeyDetailsResponse->Dimensions;

# Returns a L<Paws::PerformanceInsights::GetDimensionKeyDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi/GetDimensionKeyDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Group => Str

The name of the dimension group. Performance Insights searches the
specified group for the dimension group ID. The following group name
values are valid:

=over

=item *

C<db.execution_plan> (Amazon RDS and Aurora only)

=item *

C<db.lock_snapshot> (Aurora only)

=item *

C<db.query> (Amazon DocumentDB only)

=item *

C<db.sql> (Amazon RDS and Aurora only)

=back




=head2 B<REQUIRED> GroupIdentifier => Str

The ID of the dimension group from which to retrieve dimension details.
For dimension group C<db.sql>, the group ID is C<db.sql.id>. The
following group ID values are valid:

=over

=item *

C<db.execution_plan.id> for dimension group C<db.execution_plan>
(Aurora and RDS only)

=item *

C<db.sql.id> for dimension group C<db.sql> (Aurora and RDS only)

=item *

C<db.query.id> for dimension group C<db.query> (DocumentDB only)

=item *

For the dimension group C<db.lock_snapshot>, the C<GroupIdentifier> is
the epoch timestamp when Performance Insights captured the snapshot, in
seconds. You can retrieve this value with the C<GetResourceMetrics>
operation for a 1 second period.

=back




=head2 B<REQUIRED> Identifier => Str

The ID for a data source from which to gather dimension data. This ID
must be immutable and unique within an Amazon Web Services Region. When
a DB instance is the data source, specify its C<DbiResourceId> value.
For example, specify C<db-ABCDEFGHIJKLMNOPQRSTU1VW2X>.



=head2 RequestedDimensions => ArrayRef[Str|Undef]

A list of dimensions to retrieve the detail data for within the given
dimension group. If you don't specify this parameter, Performance
Insights returns all dimension data within the specified dimension
group. Specify dimension names for the following dimension groups:

=over

=item *

C<db.execution_plan> - Specify the dimension name
C<db.execution_plan.raw_plan> or the short dimension name C<raw_plan>
(Amazon RDS and Aurora only)

=item *

C<db.lock_snapshot> - Specify the dimension name
C<db.lock_snapshot.lock_trees> or the short dimension name
C<lock_trees>. (Aurora only)

=item *

C<db.sql> - Specify either the full dimension name C<db.sql.statement>
or the short dimension name C<statement> (Aurora and RDS only).

=item *

C<db.query> - Specify either the full dimension name
C<db.query.statement> or the short dimension name C<statement>
(DocumentDB only).

=back




=head2 B<REQUIRED> ServiceType => Str

The Amazon Web Services service for which Performance Insights returns
data. The only valid value is C<RDS>.

Valid values are: C<"RDS">, C<"DOCDB">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDimensionKeyDetails in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::RDS::DescribeDBRecommendations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has LastUpdatedAfter => (is => 'ro', isa => 'Str');
  has LastUpdatedBefore => (is => 'ro', isa => 'Str');
  has Locale => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBRecommendations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBRecommendationsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBRecommendationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBRecommendations - Arguments for method DescribeDBRecommendations on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBRecommendations on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBRecommendations.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DBRecommendationsMessage = $rds->DescribeDBRecommendations(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      LastUpdatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      LastUpdatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
      Locale            => 'MyString',               # OPTIONAL
      Marker            => 'MyString',               # OPTIONAL
      MaxRecords        => 1,                        # OPTIONAL
    );

    # Results:
    my $DBRecommendations = $DBRecommendationsMessage->DBRecommendations;
    my $Marker            = $DBRecommendationsMessage->Marker;

    # Returns a L<Paws::RDS::DBRecommendationsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBRecommendations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more recommendations to describe.

Supported Filters:

=over

=item *

C<recommendation-id> - Accepts a list of recommendation identifiers.
The results list only includes the recommendations whose identifier is
one of the specified filter values.

=item *

C<status> - Accepts a list of recommendation statuses.

Valid values:

=over

=item *

C<active> - The recommendations which are ready for you to apply.

=item *

C<pending> - The applied or scheduled recommendations which are in
progress.

=item *

C<resolved> - The recommendations which are completed.

=item *

C<dismissed> - The recommendations that you dismissed.

=back

The results list only includes the recommendations whose status is one
of the specified filter values.

=item *

C<severity> - Accepts a list of recommendation severities. The results
list only includes the recommendations whose severity is one of the
specified filter values.

Valid values:

=over

=item *

C<high>

=item *

C<medium>

=item *

C<low>

=item *

C<informational>

=back

=item *

C<type-id> - Accepts a list of recommendation type identifiers. The
results list only includes the recommendations whose type is one of the
specified filter values.

=item *

C<dbi-resource-id> - Accepts a list of database resource identifiers.
The results list only includes the recommendations that generated for
the specified databases.

=item *

C<cluster-resource-id> - Accepts a list of cluster resource
identifiers. The results list only includes the recommendations that
generated for the specified clusters.

=item *

C<pg-arn> - Accepts a list of parameter group ARNs. The results list
only includes the recommendations that generated for the specified
parameter groups.

=item *

C<cluster-pg-arn> - Accepts a list of cluster parameter group ARNs. The
results list only includes the recommendations that generated for the
specified cluster parameter groups.

=back




=head2 LastUpdatedAfter => Str

A filter to include only the recommendations that were updated after
this specified time.



=head2 LastUpdatedBefore => Str

A filter to include only the recommendations that were updated before
this specified time.



=head2 Locale => Str

The language that you choose to return the list of recommendations.

Valid values:

=over

=item *

C<en>

=item *

C<en_UK>

=item *

C<de>

=item *

C<es>

=item *

C<fr>

=item *

C<id>

=item *

C<it>

=item *

C<ja>

=item *

C<ko>

=item *

C<pt_BR>

=item *

C<zh_TW>

=item *

C<zh_CN>

=back




=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBRecommendations> request. If this parameter is specified,
the response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of recommendations to include in the response. If
more records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that you can
retrieve the remaining results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBRecommendations in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut



package Paws::Glue::StartColumnStatisticsTaskRun;
  use Moose;
  has CatalogID => (is => 'ro', isa => 'Str');
  has ColumnNameList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has SampleSize => (is => 'ro', isa => 'Num');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartColumnStatisticsTaskRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::StartColumnStatisticsTaskRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartColumnStatisticsTaskRun - Arguments for method StartColumnStatisticsTaskRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartColumnStatisticsTaskRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method StartColumnStatisticsTaskRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartColumnStatisticsTaskRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $StartColumnStatisticsTaskRunResponse =
      $glue->StartColumnStatisticsTaskRun(
      DatabaseName   => 'MyNameString',
      Role           => 'MyNameString',
      TableName      => 'MyNameString',
      CatalogID      => 'MyNameString',    # OPTIONAL
      ColumnNameList => [
        'MyNameString', ...                # min: 1, max: 255
      ],    # OPTIONAL
      SampleSize            => 1,                 # OPTIONAL
      SecurityConfiguration => 'MyNameString',    # OPTIONAL
      );

    # Results:
    my $ColumnStatisticsTaskRunId =
      $StartColumnStatisticsTaskRunResponse->ColumnStatisticsTaskRunId;

    # Returns a L<Paws::Glue::StartColumnStatisticsTaskRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/StartColumnStatisticsTaskRun>

=head1 ATTRIBUTES


=head2 CatalogID => Str

The ID of the Data Catalog where the table reside. If none is supplied,
the Amazon Web Services account ID is used by default.



=head2 ColumnNameList => ArrayRef[Str|Undef]

A list of the column names to generate statistics. If none is supplied,
all column names for the table will be used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the database where the table resides.



=head2 B<REQUIRED> Role => Str

The IAM role that the service assumes to generate statistics.



=head2 SampleSize => Num

The percentage of rows used to generate statistics. If none is
supplied, the entire table will be used to generate stats.



=head2 SecurityConfiguration => Str

Name of the security configuration that is used to encrypt CloudWatch
logs for the column stats task run.



=head2 B<REQUIRED> TableName => Str

The name of the table to generate statistics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartColumnStatisticsTaskRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


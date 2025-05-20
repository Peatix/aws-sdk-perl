
package Paws::Glue::UpdateColumnStatisticsTaskSettings;
  use Moose;
  has CatalogID => (is => 'ro', isa => 'Str');
  has ColumnNameList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has Role => (is => 'ro', isa => 'Str');
  has SampleSize => (is => 'ro', isa => 'Num');
  has Schedule => (is => 'ro', isa => 'Str');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateColumnStatisticsTaskSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateColumnStatisticsTaskSettingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateColumnStatisticsTaskSettings - Arguments for method UpdateColumnStatisticsTaskSettings on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateColumnStatisticsTaskSettings on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateColumnStatisticsTaskSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateColumnStatisticsTaskSettings.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateColumnStatisticsTaskSettingsResponse =
      $glue->UpdateColumnStatisticsTaskSettings(
      DatabaseName   => 'MyNameString',
      TableName      => 'MyNameString',
      CatalogID      => 'MyNameString',    # OPTIONAL
      ColumnNameList => [
        'MyNameString', ...                # min: 1, max: 255
      ],    # OPTIONAL
      Role                  => 'MyNameString',        # OPTIONAL
      SampleSize            => 1,                     # OPTIONAL
      Schedule              => 'MyCronExpression',    # OPTIONAL
      SecurityConfiguration => 'MyNameString',        # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateColumnStatisticsTaskSettings>

=head1 ATTRIBUTES


=head2 CatalogID => Str

The ID of the Data Catalog in which the database resides.



=head2 ColumnNameList => ArrayRef[Str|Undef]

A list of column names for which to run statistics.



=head2 B<REQUIRED> DatabaseName => Str

The name of the database where the table resides.



=head2 Role => Str

The role used for running the column statistics.



=head2 SampleSize => Num

The percentage of data to sample.



=head2 Schedule => Str

A schedule for running the column statistics, specified in CRON syntax.



=head2 SecurityConfiguration => Str

Name of the security configuration that is used to encrypt CloudWatch
logs.



=head2 B<REQUIRED> TableName => Str

The name of the table for which to generate column statistics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateColumnStatisticsTaskSettings in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


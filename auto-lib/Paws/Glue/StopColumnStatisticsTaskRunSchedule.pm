
package Paws::Glue::StopColumnStatisticsTaskRunSchedule;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopColumnStatisticsTaskRunSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::StopColumnStatisticsTaskRunScheduleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StopColumnStatisticsTaskRunSchedule - Arguments for method StopColumnStatisticsTaskRunSchedule on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopColumnStatisticsTaskRunSchedule on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method StopColumnStatisticsTaskRunSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopColumnStatisticsTaskRunSchedule.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $StopColumnStatisticsTaskRunScheduleResponse =
      $glue->StopColumnStatisticsTaskRunSchedule(
      DatabaseName => 'MyNameString',
      TableName    => 'MyNameString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/StopColumnStatisticsTaskRunSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

The name of the database where the table resides.



=head2 B<REQUIRED> TableName => Str

The name of the table for which to stop a column statistic task run
schedule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopColumnStatisticsTaskRunSchedule in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


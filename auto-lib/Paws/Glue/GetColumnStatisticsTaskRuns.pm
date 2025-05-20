
package Paws::Glue::GetColumnStatisticsTaskRuns;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetColumnStatisticsTaskRuns');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetColumnStatisticsTaskRunsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetColumnStatisticsTaskRuns - Arguments for method GetColumnStatisticsTaskRuns on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetColumnStatisticsTaskRuns on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetColumnStatisticsTaskRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetColumnStatisticsTaskRuns.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetColumnStatisticsTaskRunsResponse =
      $glue->GetColumnStatisticsTaskRuns(
      DatabaseName => 'MyDatabaseName',
      TableName    => 'MyNameString',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyToken',          # OPTIONAL
      );

    # Results:
    my $ColumnStatisticsTaskRuns =
      $GetColumnStatisticsTaskRunsResponse->ColumnStatisticsTaskRuns;
    my $NextToken = $GetColumnStatisticsTaskRunsResponse->NextToken;

    # Returns a L<Paws::Glue::GetColumnStatisticsTaskRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetColumnStatisticsTaskRuns>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

The name of the database where the table resides.



=head2 MaxResults => Int

The maximum size of the response.



=head2 NextToken => Str

A continuation token, if this is a continuation call.



=head2 B<REQUIRED> TableName => Str

The name of the table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetColumnStatisticsTaskRuns in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


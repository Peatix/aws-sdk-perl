
package Paws::CleanRooms::UpdateConfiguredTable;
  use Moose;
  has AnalysisMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analysisMethod');
  has ConfiguredTableIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredTableIdentifier', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has SelectedAnalysisMethods => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'selectedAnalysisMethods');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfiguredTable');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuredTables/{configuredTableIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::UpdateConfiguredTableOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateConfiguredTable - Arguments for method UpdateConfiguredTable on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfiguredTable on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method UpdateConfiguredTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfiguredTable.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $UpdateConfiguredTableOutput = $cleanrooms->UpdateConfiguredTable(
      ConfiguredTableIdentifier => 'MyConfiguredTableIdentifier',
      AnalysisMethod            => 'DIRECT_QUERY',                  # OPTIONAL
      Description               => 'MyTableDescription',            # OPTIONAL
      Name                      => 'MyDisplayName',                 # OPTIONAL
      SelectedAnalysisMethods   => [
        'DIRECT_QUERY', ...    # values: DIRECT_QUERY, DIRECT_JOB
      ],    # OPTIONAL
    );

    # Results:
    my $ConfiguredTable = $UpdateConfiguredTableOutput->ConfiguredTable;

    # Returns a L<Paws::CleanRooms::UpdateConfiguredTableOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/UpdateConfiguredTable>

=head1 ATTRIBUTES


=head2 AnalysisMethod => Str

The analysis method for the configured table.

C<DIRECT_QUERY> allows SQL queries to be run directly on this table.

C<DIRECT_JOB> allows PySpark jobs to be run directly on this table.

C<MULTIPLE> allows both SQL queries and PySpark jobs to be run directly
on this table.

Valid values are: C<"DIRECT_QUERY">, C<"DIRECT_JOB">, C<"MULTIPLE">

=head2 B<REQUIRED> ConfiguredTableIdentifier => Str

The identifier for the configured table to update. Currently accepts
the configured table ID.



=head2 Description => Str

A new description for the configured table.



=head2 Name => Str

A new name for the configured table.



=head2 SelectedAnalysisMethods => ArrayRef[Str|Undef]

The selected analysis methods for the table configuration update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfiguredTable in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


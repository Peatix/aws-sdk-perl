
package Paws::CleanRooms::GetSchemaAnalysisRule;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSchemaAnalysisRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/schemas/{name}/analysisRule/{type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::GetSchemaAnalysisRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetSchemaAnalysisRule - Arguments for method GetSchemaAnalysisRule on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSchemaAnalysisRule on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method GetSchemaAnalysisRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSchemaAnalysisRule.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $GetSchemaAnalysisRuleOutput = $cleanrooms->GetSchemaAnalysisRule(
      CollaborationIdentifier => 'MyCollaborationIdentifier',
      Name                    => 'MyTableAlias',
      Type                    => 'AGGREGATION',

    );

    # Results:
    my $AnalysisRule = $GetSchemaAnalysisRuleOutput->AnalysisRule;

    # Returns a L<Paws::CleanRooms::GetSchemaAnalysisRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/GetSchemaAnalysisRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

A unique identifier for the collaboration that the schema belongs to.
Currently accepts a collaboration ID.



=head2 B<REQUIRED> Name => Str

The name of the schema to retrieve the analysis rule for.



=head2 B<REQUIRED> Type => Str

The type of the schema analysis rule to retrieve. Schema analysis rules
are uniquely identified by a combination of the collaboration, the
schema name, and their type.

Valid values are: C<"AGGREGATION">, C<"LIST">, C<"CUSTOM">, C<"ID_MAPPING_TABLE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSchemaAnalysisRule in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


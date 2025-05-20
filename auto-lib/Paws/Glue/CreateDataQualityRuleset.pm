
package Paws::Glue::CreateDataQualityRuleset;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DataQualitySecurityConfiguration => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Ruleset => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');
  has TargetTable => (is => 'ro', isa => 'Paws::Glue::DataQualityTargetTable');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataQualityRuleset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateDataQualityRulesetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateDataQualityRuleset - Arguments for method CreateDataQualityRuleset on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataQualityRuleset on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateDataQualityRuleset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataQualityRuleset.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateDataQualityRulesetResponse = $glue->CreateDataQualityRuleset(
      Name        => 'MyNameString',
      Ruleset     => 'MyDataQualityRulesetString',
      ClientToken => 'MyHashString',                                # OPTIONAL
      DataQualitySecurityConfiguration => 'MyNameString',           # OPTIONAL
      Description                      => 'MyDescriptionString',    # OPTIONAL
      Tags                             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TargetTable => {
        DatabaseName => 'MyNameString',    # min: 1, max: 255
        TableName    => 'MyNameString',    # min: 1, max: 255
        CatalogId    => 'MyNameString',    # min: 1, max: 255
      },    # OPTIONAL
    );

    # Results:
    my $Name = $CreateDataQualityRulesetResponse->Name;

    # Returns a L<Paws::Glue::CreateDataQualityRulesetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateDataQualityRuleset>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Used for idempotency and is recommended to be set to a random ID (such
as a UUID) to avoid creating or starting multiple instances of the same
resource.



=head2 DataQualitySecurityConfiguration => Str

The name of the security configuration created with the data quality
encryption option.



=head2 Description => Str

A description of the data quality ruleset.



=head2 B<REQUIRED> Name => Str

A unique name for the data quality ruleset.



=head2 B<REQUIRED> Ruleset => Str

A Data Quality Definition Language (DQDL) ruleset. For more
information, see the Glue developer guide.



=head2 Tags => L<Paws::Glue::TagsMap>

A list of tags applied to the data quality ruleset.



=head2 TargetTable => L<Paws::Glue::DataQualityTargetTable>

A target table associated with the data quality ruleset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataQualityRuleset in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


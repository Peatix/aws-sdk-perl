
package Paws::Glue::UpdateIntegrationTableProperties;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceTableConfig => (is => 'ro', isa => 'Paws::Glue::SourceTableConfig');
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has TargetTableConfig => (is => 'ro', isa => 'Paws::Glue::TargetTableConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIntegrationTableProperties');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateIntegrationTablePropertiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateIntegrationTableProperties - Arguments for method UpdateIntegrationTableProperties on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIntegrationTableProperties on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateIntegrationTableProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIntegrationTableProperties.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateIntegrationTablePropertiesResponse =
      $glue->UpdateIntegrationTableProperties(
      ResourceArn       => 'MyString128',
      TableName         => 'MyString128',
      SourceTableConfig => {
        Fields => [
          'MyString128', ...    # min: 1, max: 128
        ],    # OPTIONAL
        FilterPredicate => 'MyString128',    # min: 1, max: 128
        PrimaryKey      => [
          'MyString128', ...                 # min: 1, max: 128
        ],    # OPTIONAL
        RecordUpdateField => 'MyString128',    # min: 1, max: 128
      },    # OPTIONAL
      TargetTableConfig => {
        PartitionSpec => [
          {
            FieldName    => 'MyString128',    # min: 1, max: 128
            FunctionSpec => 'MyString128',    # min: 1, max: 128
          },
          ...
        ],    # OPTIONAL
        TargetTableName => 'MyString128',    # min: 1, max: 128
        UnnestSpec => 'TOPLEVEL',   # values: TOPLEVEL, FULL, NOUNNEST; OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateIntegrationTableProperties>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The connection ARN of the source, or the database ARN of the target.



=head2 SourceTableConfig => L<Paws::Glue::SourceTableConfig>

A structure for the source table configuration.



=head2 B<REQUIRED> TableName => Str

The name of the table to be replicated.



=head2 TargetTableConfig => L<Paws::Glue::TargetTableConfig>

A structure for the target table configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIntegrationTableProperties in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


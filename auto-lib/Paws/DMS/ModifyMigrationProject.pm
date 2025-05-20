
package Paws::DMS::ModifyMigrationProject;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has InstanceProfileIdentifier => (is => 'ro', isa => 'Str');
  has MigrationProjectIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has MigrationProjectName => (is => 'ro', isa => 'Str');
  has SchemaConversionApplicationAttributes => (is => 'ro', isa => 'Paws::DMS::SCApplicationAttributes');
  has SourceDataProviderDescriptors => (is => 'ro', isa => 'ArrayRef[Paws::DMS::DataProviderDescriptorDefinition]');
  has TargetDataProviderDescriptors => (is => 'ro', isa => 'ArrayRef[Paws::DMS::DataProviderDescriptorDefinition]');
  has TransformationRules => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyMigrationProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ModifyMigrationProjectResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyMigrationProject - Arguments for method ModifyMigrationProject on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyMigrationProject on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ModifyMigrationProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyMigrationProject.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $ModifyMigrationProjectResponse = $dms->ModifyMigrationProject(
      MigrationProjectIdentifier            => 'MyString',
      Description                           => 'MyString',    # OPTIONAL
      InstanceProfileIdentifier             => 'MyString',    # OPTIONAL
      MigrationProjectName                  => 'MyString',    # OPTIONAL
      SchemaConversionApplicationAttributes => {
        S3BucketPath    => 'MyString',
        S3BucketRoleArn => 'MyString',
      },                                                      # OPTIONAL
      SourceDataProviderDescriptors => [
        {
          DataProviderIdentifier      => 'MyString',
          SecretsManagerAccessRoleArn => 'MyString',
          SecretsManagerSecretId      => 'MyString',
        },
        ...
      ],                                                      # OPTIONAL
      TargetDataProviderDescriptors => [
        {
          DataProviderIdentifier      => 'MyString',
          SecretsManagerAccessRoleArn => 'MyString',
          SecretsManagerSecretId      => 'MyString',
        },
        ...
      ],                                                      # OPTIONAL
      TransformationRules => 'MyString',                      # OPTIONAL
    );

    # Results:
    my $MigrationProject = $ModifyMigrationProjectResponse->MigrationProject;

    # Returns a L<Paws::DMS::ModifyMigrationProjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ModifyMigrationProject>

=head1 ATTRIBUTES


=head2 Description => Str

A user-friendly description of the migration project.



=head2 InstanceProfileIdentifier => Str

The name or Amazon Resource Name (ARN) for the instance profile.



=head2 B<REQUIRED> MigrationProjectIdentifier => Str

The identifier of the migration project. Identifiers must begin with a
letter and must contain only ASCII letters, digits, and hyphens. They
can't end with a hyphen, or contain two consecutive hyphens.



=head2 MigrationProjectName => Str

A user-friendly name for the migration project.



=head2 SchemaConversionApplicationAttributes => L<Paws::DMS::SCApplicationAttributes>

The schema conversion application attributes, including the Amazon S3
bucket name and Amazon S3 role ARN.



=head2 SourceDataProviderDescriptors => ArrayRef[L<Paws::DMS::DataProviderDescriptorDefinition>]

Information about the source data provider, including the name, ARN,
and Amazon Web Services Secrets Manager parameters.



=head2 TargetDataProviderDescriptors => ArrayRef[L<Paws::DMS::DataProviderDescriptorDefinition>]

Information about the target data provider, including the name, ARN,
and Amazon Web Services Secrets Manager parameters.



=head2 TransformationRules => Str

The settings in JSON format for migration rules. Migration rules make
it possible for you to change the object names according to the rules
that you specify. For example, you can change an object name to
lowercase or uppercase, add or remove a prefix or suffix, or rename
objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyMigrationProject in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


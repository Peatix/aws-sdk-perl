
package Paws::DMS::StartMetadataModelExportToTarget;
  use Moose;
  has MigrationProjectIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has OverwriteExtensionPack => (is => 'ro', isa => 'Bool');
  has SelectionRules => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMetadataModelExportToTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::StartMetadataModelExportToTargetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartMetadataModelExportToTarget - Arguments for method StartMetadataModelExportToTarget on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMetadataModelExportToTarget on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method StartMetadataModelExportToTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMetadataModelExportToTarget.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $StartMetadataModelExportToTargetResponse =
      $dms->StartMetadataModelExportToTarget(
      MigrationProjectIdentifier => 'MyMigrationProjectIdentifier',
      SelectionRules             => 'MyString',
      OverwriteExtensionPack     => 1,                                # OPTIONAL
      );

    # Results:
    my $RequestIdentifier =
      $StartMetadataModelExportToTargetResponse->RequestIdentifier;

    # Returns a L<Paws::DMS::StartMetadataModelExportToTargetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/StartMetadataModelExportToTarget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MigrationProjectIdentifier => Str

The migration project name or Amazon Resource Name (ARN).



=head2 OverwriteExtensionPack => Bool

Whether to overwrite the migration project extension pack. An extension
pack is an add-on module that emulates functions present in a source
database that are required when converting objects to the target
database.



=head2 B<REQUIRED> SelectionRules => Str

A value that specifies the database objects to export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMetadataModelExportToTarget in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


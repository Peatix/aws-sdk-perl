
package Paws::DMS::StartMetadataModelImport;
  use Moose;
  has MigrationProjectIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Origin => (is => 'ro', isa => 'Str', required => 1);
  has Refresh => (is => 'ro', isa => 'Bool');
  has SelectionRules => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMetadataModelImport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::StartMetadataModelImportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartMetadataModelImport - Arguments for method StartMetadataModelImport on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMetadataModelImport on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method StartMetadataModelImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMetadataModelImport.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $StartMetadataModelImportResponse = $dms->StartMetadataModelImport(
      MigrationProjectIdentifier => 'MyMigrationProjectIdentifier',
      Origin                     => 'SOURCE',
      SelectionRules             => 'MyString',
      Refresh                    => 1,                                # OPTIONAL
    );

    # Results:
    my $RequestIdentifier =
      $StartMetadataModelImportResponse->RequestIdentifier;

    # Returns a L<Paws::DMS::StartMetadataModelImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/StartMetadataModelImport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MigrationProjectIdentifier => Str

The migration project name or Amazon Resource Name (ARN).



=head2 B<REQUIRED> Origin => Str

Whether to load metadata to the source or target database.

Valid values are: C<"SOURCE">, C<"TARGET">

=head2 Refresh => Bool

If C<true>, DMS loads metadata for the specified objects from the
source database.



=head2 B<REQUIRED> SelectionRules => Str

A value that specifies the database objects to import.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMetadataModelImport in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


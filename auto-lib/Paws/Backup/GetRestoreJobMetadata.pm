
package Paws::Backup::GetRestoreJobMetadata;
  use Moose;
  has RestoreJobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restoreJobId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRestoreJobMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-jobs/{restoreJobId}/metadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::GetRestoreJobMetadataOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetRestoreJobMetadata - Arguments for method GetRestoreJobMetadata on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRestoreJobMetadata on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method GetRestoreJobMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRestoreJobMetadata.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $GetRestoreJobMetadataOutput = $backup->GetRestoreJobMetadata(
      RestoreJobId => 'MyRestoreJobId',

    );

    # Results:
    my $Metadata     = $GetRestoreJobMetadataOutput->Metadata;
    my $RestoreJobId = $GetRestoreJobMetadataOutput->RestoreJobId;

    # Returns a L<Paws::Backup::GetRestoreJobMetadataOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/GetRestoreJobMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RestoreJobId => Str

This is a unique identifier of a restore job within Backup.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRestoreJobMetadata in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


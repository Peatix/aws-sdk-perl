
package Paws::Backup::ListProtectedResourcesByBackupVault;
  use Moose;
  has BackupVaultAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'backupVaultAccountId');
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProtectedResourcesByBackupVault');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-vaults/{backupVaultName}/resources/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::ListProtectedResourcesByBackupVaultOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListProtectedResourcesByBackupVault - Arguments for method ListProtectedResourcesByBackupVault on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProtectedResourcesByBackupVault on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListProtectedResourcesByBackupVault.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProtectedResourcesByBackupVault.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListProtectedResourcesByBackupVaultOutput =
      $backup->ListProtectedResourcesByBackupVault(
      BackupVaultName      => 'MyBackupVaultName',
      BackupVaultAccountId => 'MyAccountId',         # OPTIONAL
      MaxResults           => 1,                     # OPTIONAL
      NextToken            => 'Mystring',            # OPTIONAL
      );

    # Results:
    my $NextToken = $ListProtectedResourcesByBackupVaultOutput->NextToken;
    my $Results   = $ListProtectedResourcesByBackupVaultOutput->Results;

  # Returns a L<Paws::Backup::ListProtectedResourcesByBackupVaultOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListProtectedResourcesByBackupVault>

=head1 ATTRIBUTES


=head2 BackupVaultAccountId => Str

The list of protected resources by backup vault within the vault(s) you
specify by account ID.



=head2 B<REQUIRED> BackupVaultName => Str

The list of protected resources by backup vault within the vault(s) you
specify by name.



=head2 MaxResults => Int

The maximum number of items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<MaxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProtectedResourcesByBackupVault in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


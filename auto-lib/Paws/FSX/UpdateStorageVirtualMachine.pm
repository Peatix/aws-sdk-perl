
package Paws::FSX::UpdateStorageVirtualMachine;
  use Moose;
  has ActiveDirectoryConfiguration => (is => 'ro', isa => 'Paws::FSX::UpdateSvmActiveDirectoryConfiguration');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has StorageVirtualMachineId => (is => 'ro', isa => 'Str', required => 1);
  has SvmAdminPassword => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStorageVirtualMachine');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::UpdateStorageVirtualMachineResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateStorageVirtualMachine - Arguments for method UpdateStorageVirtualMachine on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStorageVirtualMachine on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method UpdateStorageVirtualMachine.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStorageVirtualMachine.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $UpdateStorageVirtualMachineResponse = $fsx->UpdateStorageVirtualMachine(
      StorageVirtualMachineId      => 'MyStorageVirtualMachineId',
      ActiveDirectoryConfiguration => {
        NetBiosName => 'MyNetBiosAlias',    # min: 1, max: 15; OPTIONAL
        SelfManagedActiveDirectoryConfiguration => {
          DnsIps => [
            'MyIpAddress', ...              # min: 7, max: 15
          ],    # min: 1, max: 3; OPTIONAL
          DomainName =>
            'MyActiveDirectoryFullyQualifiedName',  # min: 1, max: 255; OPTIONAL
          FileSystemAdministratorsGroup =>
            'MyFileSystemAdministratorsGroupName',  # min: 1, max: 256; OPTIONAL
          OrganizationalUnitDistinguishedName =>
            'MyOrganizationalUnitDistinguishedName'
          ,    # min: 1, max: 2000; OPTIONAL
          Password => 'MyDirectoryPassword',    # min: 1, max: 256; OPTIONAL
          UserName => 'MyDirectoryUserName',    # min: 1, max: 256; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      SvmAdminPassword   => 'MyAdminPassword',         # OPTIONAL
    );

    # Results:
    my $StorageVirtualMachine =
      $UpdateStorageVirtualMachineResponse->StorageVirtualMachine;

    # Returns a L<Paws::FSX::UpdateStorageVirtualMachineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/UpdateStorageVirtualMachine>

=head1 ATTRIBUTES


=head2 ActiveDirectoryConfiguration => L<Paws::FSX::UpdateSvmActiveDirectoryConfiguration>

Specifies updates to an SVM's Microsoft Active Directory (AD)
configuration.



=head2 ClientRequestToken => Str





=head2 B<REQUIRED> StorageVirtualMachineId => Str

The ID of the SVM that you want to update, in the format
C<svm-0123456789abcdef0>.



=head2 SvmAdminPassword => Str

Specifies a new SvmAdminPassword.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStorageVirtualMachine in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


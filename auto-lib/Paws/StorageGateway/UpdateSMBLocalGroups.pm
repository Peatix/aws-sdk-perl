
package Paws::StorageGateway::UpdateSMBLocalGroups;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has SMBLocalGroups => (is => 'ro', isa => 'Paws::StorageGateway::SMBLocalGroups', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSMBLocalGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateSMBLocalGroupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateSMBLocalGroups - Arguments for method UpdateSMBLocalGroups on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSMBLocalGroups on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateSMBLocalGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSMBLocalGroups.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $UpdateSMBLocalGroupsOutput = $storagegateway->UpdateSMBLocalGroups(
      GatewayARN     => 'MyGatewayARN',
      SMBLocalGroups => {
        GatewayAdmins => [
          'MyUserListUser', ...    # min: 1, max: 64
        ],    # max: 100; OPTIONAL
      },

    );

    # Results:
    my $GatewayARN = $UpdateSMBLocalGroupsOutput->GatewayARN;

    # Returns a L<Paws::StorageGateway::UpdateSMBLocalGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateSMBLocalGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str





=head2 B<REQUIRED> SMBLocalGroups => L<Paws::StorageGateway::SMBLocalGroups>

A list of Active Directory users and groups that you want to grant
special permissions for SMB file shares on the gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSMBLocalGroups in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


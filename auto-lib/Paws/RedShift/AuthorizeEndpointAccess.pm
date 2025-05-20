
package Paws::RedShift::AuthorizeEndpointAccess;
  use Moose;
  has Account => (is => 'ro', isa => 'Str', required => 1);
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has VpcIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeEndpointAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::EndpointAuthorization');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AuthorizeEndpointAccessResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::AuthorizeEndpointAccess - Arguments for method AuthorizeEndpointAccess on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AuthorizeEndpointAccess on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method AuthorizeEndpointAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AuthorizeEndpointAccess.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $EndpointAuthorization = $redshift->AuthorizeEndpointAccess(
      Account           => 'MyString',
      ClusterIdentifier => 'MyString',    # OPTIONAL
      VpcIds            => [
        'MyString', ...                   # max: 2147483647
      ],    # OPTIONAL
    );

    # Results:
    my $AllowedAllVPCs    = $EndpointAuthorization->AllowedAllVPCs;
    my $AllowedVPCs       = $EndpointAuthorization->AllowedVPCs;
    my $AuthorizeTime     = $EndpointAuthorization->AuthorizeTime;
    my $ClusterIdentifier = $EndpointAuthorization->ClusterIdentifier;
    my $ClusterStatus     = $EndpointAuthorization->ClusterStatus;
    my $EndpointCount     = $EndpointAuthorization->EndpointCount;
    my $Grantee           = $EndpointAuthorization->Grantee;
    my $Grantor           = $EndpointAuthorization->Grantor;
    my $Status            = $EndpointAuthorization->Status;

    # Returns a L<Paws::RedShift::EndpointAuthorization> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/AuthorizeEndpointAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Account => Str

The Amazon Web Services account ID to grant access to.



=head2 ClusterIdentifier => Str

The cluster identifier of the cluster to grant access to.



=head2 VpcIds => ArrayRef[Str|Undef]

The virtual private cloud (VPC) identifiers to grant access to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AuthorizeEndpointAccess in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


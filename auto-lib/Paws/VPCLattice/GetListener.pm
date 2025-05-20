
package Paws::VPCLattice::GetListener;
  use Moose;
  has ListenerIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'listenerIdentifier', required => 1);
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetListener');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/services/{serviceIdentifier}/listeners/{listenerIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetListenerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetListener - Arguments for method GetListener on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetListener on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetListener.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetListener.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetListenerResponse = $vpc -lattice->GetListener(
      ListenerIdentifier => 'MyListenerIdentifier',
      ServiceIdentifier  => 'MyServiceIdentifier',

    );

    # Results:
    my $Arn           = $GetListenerResponse->Arn;
    my $CreatedAt     = $GetListenerResponse->CreatedAt;
    my $DefaultAction = $GetListenerResponse->DefaultAction;
    my $Id            = $GetListenerResponse->Id;
    my $LastUpdatedAt = $GetListenerResponse->LastUpdatedAt;
    my $Name          = $GetListenerResponse->Name;
    my $Port          = $GetListenerResponse->Port;
    my $Protocol      = $GetListenerResponse->Protocol;
    my $ServiceArn    = $GetListenerResponse->ServiceArn;
    my $ServiceId     = $GetListenerResponse->ServiceId;

    # Returns a L<Paws::VPCLattice::GetListenerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetListener>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ListenerIdentifier => Str

The ID or ARN of the listener.



=head2 B<REQUIRED> ServiceIdentifier => Str

The ID or ARN of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetListener in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


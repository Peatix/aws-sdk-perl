
package Paws::MediaConnect::RemoveBridgeOutput;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'BridgeArn', required => 1);
  has OutputName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OutputName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveBridgeOutput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/bridges/{BridgeArn}/outputs/{OutputName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::RemoveBridgeOutputResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RemoveBridgeOutput - Arguments for method RemoveBridgeOutput on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveBridgeOutput on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method RemoveBridgeOutput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveBridgeOutput.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $RemoveBridgeOutputResponse = $mediaconnect->RemoveBridgeOutput(
      BridgeArn  => 'MyRemoveBridgeOutputRequestBridgeArnString',
      OutputName => 'MyString',

    );

    # Results:
    my $BridgeArn  = $RemoveBridgeOutputResponse->BridgeArn;
    my $OutputName = $RemoveBridgeOutputResponse->OutputName;

    # Returns a L<Paws::MediaConnect::RemoveBridgeOutputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/RemoveBridgeOutput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BridgeArn => Str

The Amazon Resource Name (ARN) of the bridge that you want to update.



=head2 B<REQUIRED> OutputName => Str

The name of the bridge output that you want to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveBridgeOutput in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut


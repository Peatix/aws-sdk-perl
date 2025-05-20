
package Paws::FMS::GetResourceSet;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::GetResourceSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetResourceSet - Arguments for method GetResourceSet on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceSet on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method GetResourceSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceSet.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $GetResourceSetResponse = $fms->GetResourceSet(
      Identifier => 'MyBase62Id',

    );

    # Results:
    my $ResourceSet    = $GetResourceSetResponse->ResourceSet;
    my $ResourceSetArn = $GetResourceSetResponse->ResourceSetArn;

    # Returns a L<Paws::FMS::GetResourceSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/GetResourceSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

A unique identifier for the resource set, used in a request to refer to
the resource set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceSet in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

